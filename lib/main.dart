import 'package:firstapp/pages/home.dart';
import 'package:firstapp/pages/login.dart';
import 'package:firstapp/pages/verifyCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Ubuntu",
        colorScheme: ColorScheme(
          brightness: Brightness.light, primary: Colors.black, 
          onPrimary: Colors.black54, secondary: Colors.deepPurple.shade600, 
          onSecondary: Colors.deepPurple.shade200, 
          error: Colors.red.shade400, onError: Colors.red.shade200, background: Colors.white, 
          onBackground: Colors.white, surface: Colors.transparent, 
          onSurface: Colors.transparent)
      ),
      color: Colors.white,
      routes: <String, WidgetBuilder>{
        '/': (context) => const LoginPage(),
        'verifyCode': (context) => const VerifyCodePage(),
        '/home': (context) => const HomePage()
      },
      initialRoute: '/',
    );
  }
}