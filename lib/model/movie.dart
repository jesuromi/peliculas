import 'package:aplicacion1/model/movie_category.dart';

class Movie{
  final String name;
  final String description;
  final String releaseDate;
  final String image;
  final double score;
  final MovieCategory category;

  Movie({
    required this.name,
    required this.description,
    required this.releaseDate,
    required this.image,
    required this.score,
    required this.category
  });
}