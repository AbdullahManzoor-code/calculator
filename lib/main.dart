import 'package:calculator/home.dart';
import 'package:calculator/loginpage.dart';
import 'package:calculator/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: spage(),
      // initialRoute: const spage(),
      routes: {
        Myroutes.Homepage: (context) => spage(),
        Myroutes.login: (context) => login(
              getscore: "",
              getinterpection: "",
              getresult: "",
              // getscore: 0,
            )
      },
    );
  }
}
