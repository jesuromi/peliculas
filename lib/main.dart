import 'package:aplicacion1/detail/detail_movie.dart';
import 'package:aplicacion1/list_movies/list_movie_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: ListMoviePage.route,
      routes : {
        ListMoviePage.route:(context) => const ListMoviePage(),
        DetailMovie.route:(context) => const DetailMovie(),
      }
    );
  }
}

