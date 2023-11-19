///Constants used in the app
class ConstantStrings {
  ///Base url for the api
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const imageBaseUrl = 'https://image.tmdb.org/t/p/';
  static const List<String> posetrSizes = [
    "w92",
    "w154",
    "w185",
    "w342",
    "w500",
    "w780",
    "original"
  ];
  static const List<String> backDropSizes = [
    "w300",
    "w780",
    "w1280",
    "original"
  ];
  static const List<String> profileSizes = [
    "w45",
    "w185",
    "h632",
    "original",
  ];

  ///Path to home screen [HomeScreen]
  static const homeScreen = '/';

  ///Path to home screen [MovieDetailsScreen]
  static const movieDetailsScreen = '/movieDetailsScreen';
}
