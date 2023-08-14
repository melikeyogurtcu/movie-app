// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/new_page.dart';



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

        
        children: [

          Card(
            
          elevation: 20,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0),),
          margin: const EdgeInsets.all(4),
            
          child: const Column(
            children: [
            Expanded(
              child: ClipRRect(
              borderRadius: 
             BorderRadius.all(Radius.circular(24)),
              child:
           Image(image: AssetImage("/Users/melikeyogurtcu/flutter_projects/movie_app/assets/image1.jpeg"),
          fit: BoxFit.contain,),
              
          
            ),),
          ]),

          
          
        
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