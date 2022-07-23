import 'package:aplicacion1/detail/detail_movie.dart';
import 'package:aplicacion1/model/movie.dart';
import 'package:aplicacion1/model/movie_category.dart';
import 'package:flutter/material.dart';

class ItemMovie extends StatelessWidget {
  final Movie movie;

  const ItemMovie({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, DetailMovie.route,arguments: movie);
        //Navigator.pushReplacementNamed(context, DetailMovie.route);
      },
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              color:Colors.red,
              child: Image.network(movie.image,fit:BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movie.name, style: Theme.of(context).textTheme.subtitle2,),
            ),

            Row(
              children: [
                Container(
                  margin:const EdgeInsets.only(left:8,bottom: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular((8))),
                    color: colorCategory(movie.category.name),
                  ),
                  child: Text(
                    movie.category.name,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                    ),

                  ),
                ),
              ],
            ),
            _infoRow(icon: Icons.today, label: movie.releaseDate),
            _infoRow(icon: Icons.star, label: "${movie.score}"),


          ],
        ),
      ),
    );
  }

  Widget _infoRow({required IconData icon, required String label}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 8,),
          Text(label),
        ],
      ),
    );
  }
}
