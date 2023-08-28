// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/functions.dart';
import 'package:animate_do/animate_do.dart';
import 'package:movie_app/movie_model.dart';
import 'detail_page.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  bool isInit = true;

  List<Movie2> _movies = [];

  @override
  void didChangeDependencies() async {
    if (isInit) {
      try {
        await AppFunctions.getFilmList();
        _movies = AppFunctions.movies;
        print("appfunction'a girildi.");
      } catch (e) {
        print(e);
      }

      setState(() {
        isInit = false;
      });
    }

    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back,color: Colors.red,)),
        backgroundColor: Colors.white,
        title: const Text(
          'Popular Movies',
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Visibility(
        replacement: const Center(
          child: CircularProgressIndicator(
            color: Colors.red,
          ),
        ),
        visible: !isInit,
        child: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: AppFunctions.movies.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 5 / 7,
            mainAxisSpacing: 11,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MovieDetailsPage(
                            AppFunctions.movies[index], index)));
                  },
                  child: FadeInUp(
                    duration: Duration(milliseconds: index * 200),
                    child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      margin: const EdgeInsets.all(4),
                      child: Column(children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
                            child: Hero(
                              tag: "hero-$index",
                              child: Image.network(
                                "https://image.tmdb.org/t/p/w200${_movies[index].poster_path}",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),

                /*const Column(
              children:  [
                Spacer(),
                Text('   Movie Name', style: TextStyle(color: Colors.white, fontSize: 25), ),
                
              ],
            )*/
              ],
            );
          },
        ),
      ),
    );
  }
}
