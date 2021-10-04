import 'dart:typed_data';

// Packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

// Collection Keys
class CollectionKeys {
  static const String users = 'users';
}

class FirebaseService {
  FirebaseAuth get auth => FirebaseAuth.instance;
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  FirebaseStorage get storage => FirebaseStorage.instance;

  // shared setUserId method
  String? uid;
  List<String> get userPath => [CollectionKeys.users, uid ?? ""];

  bool checkKeysForNull(List<String> keys) {
    if (keys.contains(null)) {
      // print("ERROR: invalid key was passed to firestore: $keys");
      return false;
    }
    return true;
  }

  String getPathFromKeys(List<String> keys, {bool addUserPath = false}) {
    String path =
        addUserPath ? userPath.followedBy(keys).join("/") : keys.join("/");
    path = path.replaceAll("//", "/");
    return path;
  }

  //
  // Firebase Auth
  //

  Future<Map<String, dynamic>?> _loginWithUserCredential(
      UserCredential userCredential) async {
    late Map<String, dynamic>? json;
    try {
      uid = userCredential.user!.uid;
      json = await getDoc(userPath);
      json!['uid'] = userCredential.user!.uid;
      json['name'] = userCredential.user!.displayName;
      json['email'] = userCredential.user!.email;
      await updateDoc(userPath, json);
      json['isError'] = false;
    } on FirebaseAuthException catch (error) {
      uid = null;
      json = {'error': error, 'code': error.code, 'isError': true};
    }
    return json;
  }

  Future<Map<String, dynamic>?> loginWithEmailAndPassword(
      email, password) async {
    late Map<String, dynamic> json;
    try {
      var userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      json = (await _loginWithUserCredential(userCredential))!;
      json['isError'] = false;
    } on FirebaseAuthException catch (error) {
      uid = null;
      json = {'error': error, 'code': error.code, 'isError': true};
    }
    return json;
  }

  Future<Map<String, dynamic>?> loginWithGoogle() async {
    GoogleAuthProvider googleProvider = GoogleAuthProvider();
    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');

    UserCredential userCredential = await auth.signInWithPopup(googleProvider);
    late Map<String, dynamic>? json;
    try {
      uid = userCredential.user!.uid;
      json = await getDoc(userPath);
      Map<String, dynamic> user = {};
      user['name'] = userCredential.user!.displayName;
      user['email'] = userCredential.user!.email;
      if (json!['isError']) {
        if (json['code'] == 'not-exists') {
          uid = null;
          await addDoc(userPath, user, documentId: userCredential.user!.uid);
          uid = userCredential.user!.uid;
        }
      } else {
        await updateDoc(userPath, user);
      }
      json['isError'] = false;
    } on FirebaseAuthException catch (error) {
      uid = null;
      json = {'error': error, 'code': error.code, 'isError': true};
    }
    return _loginWithUserCredential(userCredential);
  }

  Future<Map<String, dynamic>?> logout() async {
    late Map<String, dynamic> json;
    try {
      uid = null;
      await auth.signOut();
      json = {'isError': false};
    } on FirebaseAuthException catch (error) {
      json = {'error': error, 'code': error.code, 'isError': true};
    }
    return json;
  }

  Future<Map<String, dynamic>?> signup(
      email, password, Map<String, dynamic> user) async {
    late Map<String, dynamic> json;
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      uid = userCredential.user!.uid;
      await addDoc([CollectionKeys.users], user, documentId: uid);
      json = Map.from(user);
      json['isError'] = false;
    } on FirebaseAuthException catch (error) {
      json = {'error': error, 'code': error.code, 'isError': true};
    }
    return json;
  }

  //
  // Firebase Firestore
  //

  DocumentReference<Map<String, dynamic>>? _getDoc(List<String> keys) {
    if (checkKeysForNull(keys) == false) return null;
    return firestore.doc(getPathFromKeys(keys));
  }

  CollectionReference<Map<String, dynamic>>? _getCollection(List<String> keys) {
    if (checkKeysForNull(keys) == false) return null;
    return firestore.collection(getPathFromKeys(keys));
  }

  // CRUD
  Future<String> addDoc(List<String> keys, Map<String, dynamic> json,
      {String? documentId, bool addUserPath = false}) async {
    if (documentId != null) {
      keys.add(documentId);
      await firestore
          .doc(getPathFromKeys(keys, addUserPath: addUserPath))
          .set(json);
      return documentId;
    }
    CollectionReference ref =
        firestore.collection(getPathFromKeys(keys, addUserPath: addUserPath));
    final document = await ref.add(json);
    return (document).id;
  }

  Future<Map<String, dynamic>?> getDoc(List<String> keys) async {
    late Map<String, dynamic> json;
    try {
      DocumentSnapshot<Map<String, dynamic>>? document =
          (await _getDoc(keys)?.get());
      if (document != null && document.exists) {
        json = (document.data() ?? {})
          ..['documentId'] = document.id
          ..['isError'] = false;
      }
      if (document != null && !document.exists) {
        throw 'not-exists';
      }
    } catch (error) {
      json = {'code': error, 'isError': true};
    }
    return json;
  }

  Future<List<Map<String, dynamic>>?> getCollection(List<String> keys) async {
    QuerySnapshot<Map<String, dynamic>>? snapshot =
        (await _getCollection(keys)?.get());
    if (snapshot != null) {
      for (final document in snapshot.docs) {
        (document.data())['documentId'] = document.id;
      }
    }
    return snapshot?.docs.map((d) => (d.data())).toList();
  }

  // Streams
  Stream<Map<String, dynamic>>? getDocStream(List<String> keys) {
    return _getDoc(keys)?.snapshots().map((document) {
      final data = document.data() ?? {};
      return data..['documentId'] = document.id;
    });
  }

  Stream<List<Map<String, dynamic>>>? getListStream(List<String> keys) {
    return _getCollection(keys)?.snapshots().map(
      (QuerySnapshot<Map<String, dynamic>> snapshot) {
        return snapshot.docs.map((document) {
          final data = document.data();
          return data..['documentId'] = document.id;
        }).toList();
      },
    );
  }

  Future<void> updateDoc(List<String> keys, Map<String, dynamic> json,
      {bool addUserPath = false}) async {
    await firestore
        .doc(getPathFromKeys(keys, addUserPath: addUserPath))
        .update(json);
  }

  Future<void> deleteDoc(List<String> keys) async {
    await firestore.doc(getPathFromKeys(keys)).delete();
  }

  //
  // Firebase Storage
  //

  Future<String> upload(List<String> keys, Uint8List uint8List) async {
    Reference ref = storage.ref(getPathFromKeys(keys));
    await ref.putData(uint8List);
    return ref.getDownloadURL();
  }

  Future<Map<String, dynamic>?> download(List<String> keys) async {
    late Map<String, dynamic> json;
    try {
      Reference ref = storage.ref(getPathFromKeys(keys));
      json = {'data': await ref.getData()};
      json['isError'] = false;
    } catch (error) {
      json = {'code': error, 'isError': true};
    }
    return json;
  }
}
