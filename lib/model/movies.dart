import 'package:aplicacion1/model/movie.dart';
import 'package:aplicacion1/model/movie_category.dart';

final movies = [
  Movie(name: 'Batman',
      description: 'consectetur adipiscing elit. Donec tempor dui aliquam libero auctor dignissim. Ut molestie enim et mollis ullamcorper. Aliquam erat volutpat. Pellentesque pretium ullamcorper leo, at consectetur purus euismod nec. Nullam aliquam pulvinar velit, at tempor libero vestibulum eu. Vivamus eget urna sed metus pharetra porta. Vestibulum sit amet lacus turpis. Curabitur nec dolor tellus. Praesent tempor a eros ut elementum. Donec vulputate, velit et viverra iaculis, tortor ex accumsan purus, sed sodales lorem eros a mauris. Curabitur consequat non urna in scelerisque. Nullam nisl lorem, luctus semper neque in, ornare vehicula odio. Etiam imperdiet dapibus tincidunt. Quisque in imperdiet augue. Sed quis erat at diam malesuada iaculis.',
      releaseDate: "27-06-2022",
      image: "https://images.thedirect.com/media/article_full/the-batman-reviews.jpg",
      score: 4.5,
      category: MovieCategory.comedy
  ),
  Movie(name: 'thor',
      description: 'Description 2',
      releaseDate: "27-06-2022",
      image: "https://cdn.mos.cms.futurecdn.net/y5QvzV8jhsbQmaeAMpZp7V-1200-80.jpg",
      score: 4.0,
      category: MovieCategory.action
  ),
  Movie(name: 'Lightyear',
      description: 'Description 3',
      releaseDate: "27-06-2022",
      image: "https://aldianews.com/sites/default/files/articles/diseno_sin_titulo_1_40.jpg",
      score: 4.1,
      category: MovieCategory.horror
  ),
  Movie(name: 'Evangelion',
      description: 'Description 4',
      releaseDate: "27-06-2022",
      image: "https://as01.epimg.net/meristation/imagenes/2019/06/28/noticias/1561714606_425342_1561743065_noticia_normal.jpg",
      score: 4.6,
      category: MovieCategory.action
  ),
  Movie(name: 'Transformers',
      description: 'Description 5',
      releaseDate: "27-06-2022",
      image: "https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/02/Transformers-2007-1.jpg",
      score: 4.3,
      category: MovieCategory.comedy
  ),
];