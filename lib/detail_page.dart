import 'dart:ui';

import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar (
        backgroundColor: Colors.black,
        title: const Text('How To Train Your Dragon 2',style: TextStyle(color: Colors.red),
        ),
        actions: <Widget> [
          IconButton(onPressed: (){}, icon: const Icon(Icons.save_alt),
          color: Colors.grey,),
        ],
        

      ),

      body: ListView(
       
        children:<Widget>[
          
          Column(
            
            
            children: [
              ClipRRect(
                borderRadius: 
                BorderRadius.all(Radius.circular(30)),
                child: Container(
                  
                  color: Colors.red,
                  
                //decoration :BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: const Image(image: AssetImage("/Users/melikeyogurtcu/movie-app/movie-app/assets/image1.jpeg"),
                  fit: BoxFit.contain,),
                  
                  
                    ),
              ),
            ],
          ),
        ],
      ),
      
      

      

      
      
    );
  }
}