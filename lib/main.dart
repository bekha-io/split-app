import 'package:firstapp/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      color: Colors.white,
      pageRouteBuilder: <T>(RouteSettings settings, WidgetBuilder builder) {
        return CupertinoPageRoute(builder: builder, settings: settings);
      },
      textStyle: const TextStyle(color: Colors.white, fontFamily: "e-Ukraine"),
      routes: <String, WidgetBuilder>{
        '/': (context) => const LoginPage(),
      },
      initialRoute: '/',
    );
  }
}
