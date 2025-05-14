import 'package:flutter/material.dart';
import 'package:movie_information_app/presentation/pages/home/home.dart';
import 'package:movie_information_app/presentation/pages/movie_detail/movie_detail.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MovieDetail(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 20,
            color: Colors.white,
          )
        )
      ),
    );
  }
}
