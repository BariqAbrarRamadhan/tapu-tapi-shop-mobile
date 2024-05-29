import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/app.dart';
import 'package:tapu_tapi_shop/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}
