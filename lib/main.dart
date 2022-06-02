import 'package:flutter/material.dart';
import 'package:ppdb_pangkalpinang/src/app.dart';
import 'src/commons/color.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        title: 'PPDB',
        theme: ThemeData(
          primaryColor: ColorPallete.primaryBlue,
          errorColor: ColorPallete.redColor,
          colorScheme: ThemeData().colorScheme.copyWith(primary: ColorPallete.primaryBlue),
          fontFamily: 'Poppins',
        ),
        color: ColorPallete.primaryBlue, 
        debugShowCheckedModeBanner: false,       
        home: const Scaffold(
          backgroundColor: Colors.white, 
          body: App(),
        )
      );
  }
}