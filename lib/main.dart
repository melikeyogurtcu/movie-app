import 'package:flutter/material.dart';
import 'package:movie_app/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Material App',
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
