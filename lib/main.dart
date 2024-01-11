import 'package:ai_chatbot/Intro_page.dart';
import 'package:ai_chatbot/chatscreen.dart';
import 'package:ai_chatbot/colors/colors.dart';
import 'package:flutter/material.dart';


void main() {
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
      theme:  lightmode,
      home: introPage(),
    routes: {
    "/intro_page":(context) => const introPage(),
    "/chatscreen":(context) => const ChatScreen()
      },initialRoute: "/intro_page",
    );
  }
}
