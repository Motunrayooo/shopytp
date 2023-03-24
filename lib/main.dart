import 'package:flutter/material.dart';
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
      initialRoute: HomeScreen.id,

      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        TowelScreen.id: (context) => TowelScreen(),
      },

    );
  }
}

//TowelDetailsScreen(),
