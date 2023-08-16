import 'package:flutter/material.dart';
import 'package:movie_app/home_page.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const home_page(),
        
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text( 
          'Popular Movies', style: TextStyle(color: Colors.red),
          ),


        ),
      ),
      
      
    );
  }

  
}
//use_colorhunt
//use_LottieFiles