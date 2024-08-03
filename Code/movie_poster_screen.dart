import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'movie.dart';

// MoviePosterScreen is a StatelessWidget which displays a movie poster and allows the user to open the movie's IMDb page.
class MoviePosterScreen extends StatelessWidget {

  // movie contains all the data of the movie to be displayed in the list
  final Movie movie;

  // Constructor for MoviePosterScreen, requiring a Movie object.
  MoviePosterScreen({required this.movie});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      backgroundColor: Colors.black, // sets the background color of the screen to black
      body: GestureDetector(
        onTap: () async {
          // defines an asynchronous onTap function to handle taps on the movie poster
          if (movie.imdbUrl.isNotEmpty) {
            // checks if the IMDb URL for the movie is not empty
            if (await canLaunch(movie.imdbUrl)) {
              // checks if the URL can be launched in a browser
              await launch(movie.imdbUrl); // LAUNCH the IMDb URL!
            } else {
              // if the URL cannot be launched, show a snack bar with an error message
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Could not launch ${movie.imdbUrl}')),
              );
            }
          }
        },
        child: Center(
          // center movie poster image on the screen
          child: Image.asset(
            'images/${movie.imageName}', // load movie poster image from assets
            fit: BoxFit.contain, // ensure image is contained within the screen
            height: double.infinity, // set image height to fill the screen
            width: double.infinity, // set image width to fill the screen
            alignment: Alignment.center, // align the image to the center of the screen
          ),
        ),
      ),
    );
  }
}
