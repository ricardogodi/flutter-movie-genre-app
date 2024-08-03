// Movie is a class representing a movie with various properties.
// It serves as a data model for storing and accessing movie-related information.
class Movie {
  // title of the movie
  final String title;

  // URL to the movie's IMDb page.
  final String imdbUrl;

  // URL to the movie's Wikipedia page.
  final String wikipediaUrl;

  // movie's director.
  final String movieDirector;

  // list of the main stars of the movie
  final String movieStars;

  // the length of the movie
  final String duration;

  // filename for the image representing the movie (poster)
  final String imageName;

  // map that holds various ratings of the movie (IMDb, Rotten Tomatoes)
  final Map<String, double> ratings;

  // Constructor for the Movie class, requiring all fields to be initialized
  Movie({
    required this.title,
    required this.imdbUrl,
    required this.wikipediaUrl,
    required this.movieDirector,
    required this.movieStars,
    required this.duration,
    required this.imageName,
    required this.ratings,
  });
}
