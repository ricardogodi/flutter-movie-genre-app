import 'movie.dart';

// MovieData is a class containing a static map of movies categorized by their genres
// It provides a predefined set of movie instances for each genre
class MovieData {
  static final Map<String, List<Movie>> moviesByGenre = {
    'Comedy': [
      Movie(
        title: 'Blades of glory',
        imdbUrl: 'https://www.imdb.com/title/tt0445934/',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/Blades_of_Glory',
        movieDirector: 'Will Speck',
        movieStars: 'Will Ferrell, Jon Heder',
        duration: '1h 33m',
        imageName: 'blades_of_glory.jpg',
        ratings: {
          'IMDb': 4.4,
          'Rotten Tomatoes': 34.0,
          'Metacritic': 72.0,
        },
      ),
      Movie(
        title: 'The 40-Year-Old Virgin',
        imdbUrl: 'https://www.imdb.com/title/tt0405422/',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/The_40-Year-Old_Virgin',
        movieDirector: 'Judd Apatow',
        movieStars: 'Steve Carell, Catherine Keener, Paul Rudd',
        duration: '1h 56m',
        imageName: 'the_40_year_old_virgin.jpg',
        ratings: {
          'IMDb': 8.5,
          'Rotten Tomatoes': 92.0,
          'Metacritic': 78.0,
        },
      ),
      Movie(
        title: 'No Hard Feelings',
        imdbUrl: 'https://www.imdb.com/title/tt15671028/',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/No_Hard_Feelings_(2020_film)',
        movieDirector: 'Gene Stupnitsky',
        movieStars: ' Jennifer Lawrence, Andrew Barth Feldman, Laura Benanti',
        duration: '1h 43m',
        imageName: 'no_hard_feelings.jpg',
        ratings: {
          'IMDb': 5.5,
          'Rotten Tomatoes': 52.0,
          'Metacritic': 77.0,
        },
      ),
      Movie(
        title: 'Barbie',
        imdbUrl: 'https://www.imdb.com/title/tt1517268/',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/Barbie',
        movieDirector: 'Greta Gerwig',
        movieStars: ' Margot Robbie, Ryan Gosling, Issa Rae',
        duration: '1h 54m',
        imageName: 'barbie.jpg',
        ratings: {
          'IMDb': 9.5,
          'Rotten Tomatoes': 99.0,
          'Metacritic': 98.0,
        },
      ),
    ],
    'Drama': [
      Movie(
        title: 'Whiplash',
        imdbUrl: 'https://www.imdb.com/title/tt2582802/?ref_=sr_t_40',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/Whiplash_(2014_film)',
        movieDirector: 'Damien Chazelle',
        movieStars: 'Miles Teller, J.K. Simmons, Melissa Benoist',
        duration: '1h 46m',
        imageName: 'whiplash.jpg',
        ratings: {
          'IMDb': 3.7,
          'Rotten Tomatoes': 72.0,
          'Metacritic': 74.0,
        },
      ),
      Movie(
        title: 'Oppenheimer',
        imdbUrl: 'https://www.imdb.com/title/tt15398776/?ref_=sr_t_5',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/Oppenheimer_(film)',
        movieDirector: 'Christopher Nolan',
        movieStars: 'Cillian Murphy, Emily Blunt, Matt Damon',
        duration: '3h',
        imageName: 'oppenheimer.jpg',
        ratings: {
          'IMDb': 5.5,
          'Rotten Tomatoes': 95.0,
          'Metacritic': 38.0,
        },
      ),
      Movie(
        title: 'Pride and Prejudice',
        imdbUrl: 'https://www.imdb.com/title/tt0414387/',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/Pride_%26_Prejudice_(2005_film)',
        movieDirector: 'Joe Wright',
        movieStars: 'Keira Knightley, Matthew Macfadyen, Brenda Blethyn',
        duration: '2h 9m',
        imageName: 'pride_and_prejudice.jpg',
        ratings: {
          'IMDb': 6.7,
          'Rotten Tomatoes': 56.0,
          'Metacritic': 88.0,
        },
      ),
      Movie(
        title: 'The Pianist',
        imdbUrl: 'https://www.imdb.com/title/tt0253474/',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/The_Pianist_(2002_film)',
        movieDirector: 'Roman Polanski',
        movieStars: 'Adrien Brody, Thomas Kretschmann, Frank Finlay',
        duration: '2h 30m',
        imageName: 'the_pianist.jpg',
        ratings: {
          'IMDb': 6.7,
          'Rotten Tomatoes': 66.0,
          'Metacritic': 34.0,
        },
      ),
    ],
    'Animation': [
      Movie(
        title: 'A Bug\'s Life',
        imdbUrl: 'https://www.imdb.com/title/tt0120623/',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/A_Bug\'s_Life',
        movieDirector: 'John Lasseter, Andrew Stanton',
        movieStars: 'Kevin Spacey, David Foley, Julia Louis-Dreyfus',
        duration: '1h 35m',
        imageName: 'a_bugs_life.jpg',
        ratings: {
          'IMDb': 3.4,
          'Rotten Tomatoes': 77.0,
          'Metacritic': 35.0,
        },
      ),
      Movie(
        title: 'Up',
        imdbUrl: 'https://www.imdb.com/title/tt1049413/',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/Up_(2009_film)',
        movieDirector: 'Pete Docter, Bob Peterson',
        movieStars: 'Edward Asner, Jordan Nagai, John Ratzenberger',
        duration: '1h 36m',
        imageName: 'up.jpg',
        ratings: {
          'IMDb': 4.5,
          'Rotten Tomatoes': 22.0,
          'Metacritic': 4.0,
        },
      ),
      Movie(
        title: 'Toy Story',
        imdbUrl: 'https://www.imdb.com/title/tt0114709/',
        wikipediaUrl: 'https://en.wikipedia.org/wiki/Toy_Story',
        movieDirector: 'John Lasseter',
        movieStars: 'Tom Hanks, Tim Allen, Don Rickles',
        duration: '1h 21m',
        imageName: 'toy_story.jpg',
        ratings: {
          'IMDb': 4.7,
          'Rotten Tomatoes': 42.0,
          'Metacritic': 38.0,
        },
      ),
      Movie(
        title: 'Finding Nemo',
        imdbUrl: 'https://www.imdb.com/title/tt0266543/',
        wikipediaUrl: 'finding nemo',
        movieDirector: 'Andrew Stanton, Lee Unkrich',
        movieStars: 'Albert Brooks, Ellen DeGeneres, Alexander Gould',
        duration: '1h 40m',
        imageName: 'finding_nemo.jpg',
        ratings: {
          'IMDb': 8.5,
          'Rotten Tomatoes': 32.0,
          'Metacritic': 28.0,
        },
      ),
    ],
  };
}