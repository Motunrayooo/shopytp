import 'package:flutter/material.dart';
import 'package:shopytp/screen/bathrobe_screen.dart';
import 'package:shopytp/screen/beddings_screen.dart';
import 'package:shopytp/screen/categories_screen.dart';
import 'package:shopytp/screen/home_screen.dart';
import 'package:shopytp/screen/towel_screen.dart';

import 'screen/towel_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'CreteRound',
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            color: Colors.black,
            fontFamily: 'PTSans',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
          labelMedium: TextStyle(
            color: Colors.black,
            fontFamily: 'Merienda',
            fontWeight: FontWeight.w600,
            fontSize: 15.0
          ),
          labelSmall: TextStyle(
            fontFamily: 'SpaceGrotesk',
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
          ),
        ),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        TowelScreen.id: (context) => TowelScreen(),
        BathRobeScreen.id: (context) => BathRobeScreen(),
        BeddingScreen.id: (context) => BeddingScreen(),
      },
    );
  }
}

//TowelDetailsScreen(),
