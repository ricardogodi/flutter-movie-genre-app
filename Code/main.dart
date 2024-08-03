// Importing necessary Flutter Material components and the movie_genres_screen file.
import 'package:flutter/material.dart';
import 'movie_genres_screen.dart';

// Entry point of the application.
void main() {
  runApp(MyApp());
}

// StatelessWidget that defines the basic configuration of the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Explorer',
      theme: ThemeData.dark(),
      home: MovieGenresScreen(), // sets the home screen to be the MovieGenresScreen.
    );
  }
}