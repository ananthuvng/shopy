import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopy/home/home.dart';
import 'package:shopy/home/homee.dart';
import 'package:shopy/reg/signin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Signemail(),
  ));
}
