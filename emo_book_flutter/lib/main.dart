import 'package:flutter/material.dart';

// Packages
import 'package:firebase_core/firebase_core.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

// Main App
import 'package:emo_book_flutter/main_scaffold.dart';

void main() async {
  configureApp();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainScaffold());
}
