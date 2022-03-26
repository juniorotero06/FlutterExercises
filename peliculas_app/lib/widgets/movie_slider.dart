import 'package:flutter/material.dart';

import '../models/models.dart';

class MovieSlider extends StatefulWidget {
  final List<Movie> movies;
  final String? title;
  final Function onNextPage;

  const MovieSlider(
      {Key? key, required this.movies, this.title, required this.onNextPage})
      : super(key: key);

  @override
  State<MovieSlider> createState() => _MovieSliderState();
}

/////////////////////////////////////////////////////////////////////////
class _MovieSliderState extends State<MovieSlider> {
  final ScrollController scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 500) {
        widget.onNextPage();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.title!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          const SizedBox(height: 20),
          _MoviePoster(movie: widget.movies, scrollController: scrollController)
        ],
      ),
    );
  }
}

/////////////////////////////////////////////////////////
class _MoviePoster extends StatelessWidget {
  final List<Movie> movie;
  final ScrollController scrollController;

  const _MoviePoster(
      {Key? key, required this.movie, required this.scrollController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: movie.length,
        itemBuilder: (_, int index) {
          final mov = movie[index];

          return Container(
            width: 130,
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "details",
                      arguments: "movie-instance"),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                      placeholder: const AssetImage("assets/no-image.jpg"),
                      image: NetworkImage(mov.fullPosterImg),
                      width: 130,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  mov.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
