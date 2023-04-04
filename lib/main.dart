import 'package:flutter/material.dart';
import 'package:shopytp/screen/bathrobe_details_screen.dart';
import 'package:shopytp/screen/bathrobe_screen.dart';
import 'package:shopytp/screen/beddings_details_screen.dart';
import 'package:shopytp/screen/beddings_screen.dart';
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
            fontSize: 15.0,
          ),
          labelSmall: TextStyle(
            fontFamily: 'SpaceGrotesk',
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
          ),
          headlineMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20.0,
            fontFamily: 'Pacifico-Regular',
          ),
        ),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        TowelScreen.id: (context) => TowelScreen(),
        BathRobeScreen.id: (context) => const BathRobeScreen(),
        BeddingScreen.id: (context) => const BeddingScreen(),
        TowelDetailsScreen.id: (context) => const TowelDetailsScreen(),
        BathrobeDetailsScreen.id: (context) => const BathrobeDetailsScreen(),
        BeddingDetailsScreen.id: (context) => const BeddingDetailsScreen(),
      },
    );
  }
}

//TowelDetailsScreen(),
