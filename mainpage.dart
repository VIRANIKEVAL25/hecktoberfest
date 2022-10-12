import 'package:flutter/material.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


 /* MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Details Page',
theme: ThemeData(
//We set poppins as are default font
textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
primaryColor: kPrimaryColor,
accentColor: kPrimaryColor,
visualDensity: VisualDensity.adaptivePlatformDensity,
),

 ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Theme.of(context).primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      )
      */
