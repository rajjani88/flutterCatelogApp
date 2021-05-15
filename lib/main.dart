import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catelog_app/pages/loginpage.dart';
import 'package:flutter_tutorial_catelog_app/utils/myroutes.dart';
import 'pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      //home: Home(),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
