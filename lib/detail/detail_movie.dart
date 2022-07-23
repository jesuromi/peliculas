import 'package:aplicacion1/model/movie_category.dart';
import 'package:flutter/material.dart';

import '../model/movie.dart';

class DetailMovie extends StatefulWidget {
  static const route = '/detail';
  const DetailMovie({Key? key}) : super(key: key);

  @override
  State<DetailMovie> createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  @override

  bool _isPressed = false;

  void _myCallback() {
    setState(() {
      _isPressed = true;
    });
  }

  Widget build(BuildContext context) {

    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 180,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(movie.name),
                  background:Image.network(
                      movie.image,
                      fit:BoxFit.cover
                  ),
                  collapseMode: CollapseMode.parallax,
                ),

              ),
              SliverList(delegate: SliverChildListDelegate([
                cardMovie(movie),
                cardDetail(movie),
              ]),)
            ],
          ),Positioned(
            top:0.0,
            right: 0.0,
            child: Align(
              child: FloatingActionButton(
                onPressed: _isPressed == false ? _myCallback : null,
                child: const Icon(Icons.heart_broken),

              ),
            ),
          ),
        ],

      ),
    );
  }
}

Card cardMovie(Movie movie){
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: ClipRRect(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin:const EdgeInsets.only(top:8,right: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular((8))),
                color: colorCategory(movie.category.name),
              ),
              child: Text(movie.category.name,style:const TextStyle(color: Colors.white),),

              ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child:Row(
              children: [
                Icon(Icons.lock_clock),
                SizedBox(width: 10,),
                Text(movie.name),
              ],
            ) ,

          ),
          Container(
            padding: const EdgeInsets.all(10),
            child:Row(
              children: [
                Icon(Icons.calendar_month),
                SizedBox(width: 10,),
                Text(movie.releaseDate),
              ],
            ) ,

          ),

        ],
      ),
    )
  );
}

Card cardDetail(Movie movie){
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    margin: const EdgeInsets.all(15.0),
    elevation: 10,
    child: ClipRRect(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Descripción:',style: TextStyle(fontWeight:FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(movie.description,textAlign: TextAlign.justify,),
          ),
        ],
      ),
    ),
  );
}
