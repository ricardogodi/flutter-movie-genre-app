// Importing necessary Flutter Material components and other required files for the movie genres screen.
import 'package:flutter/material.dart';
import 'movie_data.dart';
import 'movie.dart';
import 'movie_card.dart';

// MovieGenresScreen class, a StatefulWidget that will manage the state of movie genres.
class MovieGenresScreen extends StatefulWidget {
  @override
  _MovieGenresScreenState createState() => _MovieGenresScreenState();
}

// _MovieGenresScreenState, defines the state for MovieGenresScreen
class _MovieGenresScreenState extends State<MovieGenresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Genres'), // Title of the AppBar
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          // Generating sections for different movie genres.
          genreSection('Comedy'),
          genreSection('Drama'),
          genreSection('Animation'),
        ],
      ),
    );
  }

  // THIS FUNCTION CREATES A WIDGET FOR EACH MOVIE
  Widget genreSection(String genre) {
    List<Movie>? movies = MovieData.moviesByGenre[genre]; // RETRIEVING movies by genre

    // Handling the case where no movies are available for a genre
    if (movies == null || movies.isEmpty) {
      return Expanded(
        child: Center(child: Text('No movies available for $genre')),
      );
    }

    // return widget for displaying movies of a particular genre
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(genre, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), // Genre title.
          ),
          SizedBox(
            height: 200,
            child: ListView.builder( // THIS IS THE LIST THAT IS RETURNED ALONG WITH EXPANDED
              scrollDirection: Axis.horizontal,
              itemCount: movies.length, // Count of movies in the genre
              itemBuilder: (context, index) {
                // Creating a horizontal scrollable list of movie cards
                return MovieCard(movie: movies![index]); // Movie card for each movie
              },
            ),
          ),
        ],
      ),
    );
  }
}