import 'package:aplicacion1/list_movies/item_movie.dart';
import 'package:aplicacion1/model/movies.dart';
import 'package:flutter/material.dart';

class ListMoviePage extends StatelessWidget {
  static const route = "/";
  const ListMoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cartelera'),
      ),
      body:ListView.builder(
        itemBuilder: (_,position) =>ItemMovie(
          movie:movies[position],
        ),
        itemCount: movies.length,
      ),
    );
  }
}
