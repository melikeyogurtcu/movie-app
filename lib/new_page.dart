import 'package:flutter/material.dart';


class NewPage extends StatelessWidget {
  const NewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child:Image(image: AssetImage("/Users/melikeyogurtcu/flutter_projects/movie_app/assets/image1.jpeg"),
          fit: BoxFit.contain,),
           ),
      
      
    );
  }
}