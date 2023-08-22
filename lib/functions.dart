
import 'package:dio/dio.dart';
import 'package:movie_app/movie_model.dart';

class AppFunctions {
    static Dio dio = Dio();
    static String authToken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhNDcxYTcyNjE0NDYxYTc0MjA5ODBjYTJjYWQ2Y2E2YyIsInN1YiI6IjY0ZTFmNTRkOGMwYTQ4MDBhZTJjMDQwNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MUZfuk8h1msUh_gX-_K8KjKvmraHAKBk9Zfenzlpo9c";
   
    
    static List<Movie2> movies = [];
    
    
    static Future<void> getFilmList() async {

      var response = await dio.get("https://api.themoviedb.org/3/trending/movie/day?language=en-US",
       options: Options(
          headers: {
          "accept": 'application/json',
          "authorization": 'Bearer $authToken'
  }
        ));
      List<dynamic> responseData = response.data["results"];

      movies = responseData.map((e) => Movie2.fromMap(e)).toList();
      return Future.value();
    }

    static Future<void> authenticateUser() async {
      var response = await dio.get(
        "https://api.themoviedb.org/3/account/20327044", 
        options: Options(
          headers: {"authorization": authToken}
        ));
    }
}