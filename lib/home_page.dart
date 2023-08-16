// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/movie_api.dart';
import 'detail_page.dart';



class home_page extends StatelessWidget {
  const home_page ({ Key? key }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return GridView.builder(
    
     padding: const EdgeInsets.all(8.0),
     itemCount: 6,
     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 5/7,
      mainAxisSpacing: 11,
      crossAxisSpacing: 15,
      ), 
    itemBuilder:( BuildContext context, int index){
    
      return  Stack(

        
        children: <Widget> [

          InkWell(
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MovieDetailsPage(testMovie,index)));
            } ,
            child: Card(
            
            elevation: 20,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),),
            margin: const EdgeInsets.all(4),
            
            child:  Column(
              children: [
                
              Expanded(
                child: ClipRRect(
                borderRadius: 
               const BorderRadius.all(Radius.circular(24)),
                child:
                
             Hero(
              tag: "hero-$index",
               child: const Image(image: AssetImage("/Users/melikeyogurtcu/movie-app/movie-app/assets/poster.jpeg"),
                         fit: BoxFit.contain,),
             ),
                
            
                
            
              ),),
            ]),
          
            
            
                  
                  ),
          ),


        const Column(
          children:  [
            Spacer(),
            Text('   Movie Name', style: TextStyle(color: Colors.white, fontSize: 25), ),
            
          ],
        )
        ],

        

      );
    
    },
  
    );

  }
}