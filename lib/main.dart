import 'package:flutter/material.dart';
import 'package:utp_mobile/WelcomeScreen.dart';
import 'package:utp_mobile/PortoProfil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: WelcomeScreen(),
       //PortoProfil(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/profile' : (context) => PortoProfil(),
      },
    );
  }
}

