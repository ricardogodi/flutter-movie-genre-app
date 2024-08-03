import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'movie.dart';
import 'movie_poster_screen.dart';
import 'movie_info_screen.dart';

// MovieCard is a StatelessWidget that represents a movie in a card format.
class MovieCard extends StatelessWidget {
  // 'movie' is a final instance of the Movie class, representing the movie information to display
  final Movie movie;

  // Constructor for MovieCard, requiring a Movie object
  MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {

    // GestureDetector to detect taps and long presses on the card.
    return GestureDetector(
      onTap: () {
        // Navigate to the MoviePosterScreen on 'SHORT CLICK'
        Navigator.push(
            context,
            _createPageRoute(MoviePosterScreen(movie: movie))
        );
      },
      onLongPressStart: (LongPressStartDetails details) {
        // Show a menu on long press to provide additional actions.
        final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
        showMenu(
          context: context,
          position: RelativeRect.fromRect(
            details.globalPosition & Size(40, 40), // Smaller rect, the touch area
            Offset.zero & overlay.size, // Bigger rect, the entire screen
          ),
          items: [
            // Popup menu items for different actions
            const PopupMenuItem<String>(
              child: Text('Display Movie Info'),
              value: 'movie_info',
            ),
            const PopupMenuItem<String>(
              child: Text('Go to Wikipedia'),
              value: 'wikipedia',
            ),
            const PopupMenuItem<String>(
              child: Text('Go to IMDb'),
              value: 'imdb',
            ),
          ],
        ).then((value) {

          // Handle the selected option from the menu
          switch (value) {
            case 'movie_info':
            // Navigate to the MovieInfoScreen for movie information on 'LONG CLICK.'
              Navigator.push(
                  context,
                  _createPageRoute(MovieInfoScreen(movie: movie))
              );
              break;
            case 'wikipedia':
            // Launch the Wikipedia URL if available
              if (movie.wikipediaUrl.isNotEmpty) {
                _launchURL(movie.wikipediaUrl);
              }
              break;
            case 'imdb':
            // Launch the IMDb URL if available
              if (movie.imdbUrl.isNotEmpty) {
                _launchURL(movie.imdbUrl);
              }
              break;
          }
        });
      },
      child: Card(
        // styling for the movie card
        elevation: 10, // elevate the movie cards
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: const EdgeInsets.all(10.0),
        child: Container(
          // container for the content of the card
          height: 150,
          width: 350, // set a fixed width for uniformity of the movie cards
          padding: EdgeInsets.all(10),
          child: Row(
            // layout of the card content
            children: <Widget>[
              // movie image display
              Image.asset(
                'images/${movie.imageName}',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10),
              // movie information display
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // movie title
                    Text(
                      movie.title,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10), // space between title and stars
                    // movie stars
                    Text(
                      movie.movieStars,
                      style: TextStyle(fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to launch a URL in the browser.
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

PageRouteBuilder _createPageRoute(Widget destination) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => destination,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var beginScale = 0.0;
      var endScale = 1.0;
      var curve = Curves.elasticOut; // for a 'springy' effect
      var tweenScale = Tween(begin: beginScale, end: endScale).chain(CurveTween(curve: curve));

      var tweenFade = Tween(begin: 0.0, end: 1.0).chain(CurveTween(curve: curve));

      var tweenRotate = Tween(begin: -0.1, end: 0.0).chain(CurveTween(curve: curve)); // slight rotation

      return FadeTransition(
        opacity: animation.drive(tweenFade),
        child: ScaleTransition(
          scale: animation.drive(tweenScale),
          child: RotationTransition(
            turns: animation.drive(tweenRotate),
            child: child,
          ),
        ),
      );
    },
    transitionDuration: Duration(milliseconds: 700), // Slightly longer duration
  );
}
