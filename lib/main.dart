import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:multivendorweb/views/screens/main_screen.dart';
import 'dart:io';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();

   await  Firebase.initializeApp(
     options: kIsWeb || Platform.isAndroid?  FirebaseOptions(
       apiKey: "AIzaSyAPjpZbD4TO-YNPqZYOtxJOxiZVj1ZH9tI",
       appId: "1:528013361917:web:cfdad9d96f70528d543494",
       messagingSenderId: "528013361917",
       projectId: "todolistapp-f1ae9",
       storageBucket: "todolistapp-f1ae9.appspot.com",


     ):null
   );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      builder: EasyLoading.init(),

    );
  }
}


