import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieDbKey = dotenv.env['MOVIEDB_KEY'] ?? 'No key found';
  static String apiUrl = dotenv.env['API_URL'] ?? 'No url found';
  static String language = dotenv.env['LANGUAGE'] ?? 'No language found';
}
