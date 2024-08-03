import 'package:flutter/material.dart';
import 'movie.dart';

// MovieInfoScreen is a StatelessWidget which displays detailed information about a movie.
class MovieInfoScreen extends StatelessWidget {
  // 'movie' is a final instance of the Movie class, representing the movie to display.
  final Movie movie;

  // Constructor for MovieInfoScreen, requiring a Movie object.
  MovieInfoScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic material design visual layout structure
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Information'), // AppBar with a title.
      ),
      body: SingleChildScrollView(
        // SingleChildScrollView allows the body to be scrollable.
        child: Padding(
          padding: const EdgeInsets.all(12.0), // Padding around the content.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20), // spacing
              movieInfoCard(), // calls movieInfoCard to create a card with movie details.
              SizedBox(height: 20), // more spacing
              ratingsSection(), // calls ratingsSection to create a card with movie ratings.
            ],
          ),
        ),
      ),
    );
  }

  /* NOT USED
  Widget moviePosterImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Image.asset(
        'images/${movie.imageName}',
        fit: BoxFit.contain,
      ),
    );
  }
*/

  // builds a widget displaying detailed information about the movie
  Widget movieInfoCard() {
    return Card(
      elevation: 15,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.movie_filter, size: 40), // Leading icon for the title
            title: Text(movie.title, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Duration: ${movie.duration}'), // Displays the movie's duration
          ),
          infoSection(Icons.person, 'Director', movie.movieDirector), // director information
          infoSection(Icons.star, 'Stars', movie.movieStars), // stars information
          infoSection(Icons.timer, 'Duration', movie.duration), // duration information
        ],
      ),
    );
  }

  // Create a card widget for displaying movie ratings
  Widget ratingsSection() {
    return Card(
      elevation: 15,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.rate_review, size: 40), // leading icon for the ratings section.
            title: Text('Ratings', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          // map each rating entry to a ListTile and converts it to a list.
          ...movie.ratings.entries.map((entry) => ratingSection(entry.key, entry.value)).toList(),
        ],
      ),
    );
  }

  // Creates a ListTile for displaying a specific piece of information about the movie
  Widget infoSection(IconData icon, String title, String detail) {
    return ListTile(
      leading: Icon(icon, size: 30), // icon for the section
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)), // title for the section
      subtitle: Text(detail),
    );
  }

  // Creates a ListTile for displaying a specific movie rating
  Widget ratingSection(String source, double rating) {
    return ListTile(
      leading: Icon(Icons.star_border, size: 30), // icon for the rating
      title: Text(source, style: TextStyle(fontWeight: FontWeight.bold)), // source of the rating
      subtitle: Text('Rating: ${rating.toString()}'), // display the rating value
    );
  }
}