import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 124, 124, 124),
        primarySwatch: Colors.yellow,
        dividerColor: Colors.white,
        listTileTheme: const ListTileThemeData(iconColor: Colors.black),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 124, 124, 124),
          titleTextStyle: TextStyle(color: Colors.amberAccent, fontSize: 25, fontWeight: FontWeight.w700)),
        textTheme:  const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          )
        ),
      );