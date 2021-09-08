import 'package:flutter/material.dart';

// Packages
import 'package:firebase_core/firebase_core.dart';

// Main App
import 'package:emo_book_flutter/main_scaffold.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainScaffold());
}
