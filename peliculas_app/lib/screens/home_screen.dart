import 'package:flutter/material.dart';
import 'package:peliculas_app/providers/movies_provider.dart';
import 'package:peliculas_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    print(moviesProvider.onDisplayMovie);
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Peliculas en cines"),
          ),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // card Swipper
              CardSwiper(movies: moviesProvider.onDisplayMovie),
              //Listado de peliculas
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: "Populares!",
                onNextPage: () => moviesProvider.getPopularMovies(),
              )
            ],
          ),
        ));
  }
}
