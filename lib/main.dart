import 'package:flutter/material.dart';

import 'package:movie_app/splash_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   const  MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body:  Center(
          child: SplashScreen()
          ),
        
        
      ),
      
      
    );
  }

  
}
//use_colorhunt
//use_LottieFiles