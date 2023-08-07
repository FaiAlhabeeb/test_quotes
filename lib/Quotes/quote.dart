import 'package:flutter/material.dart';

import '../main.dart';

class quote extends StatelessWidget {
  
  

 Quote iii;
Function delete;

  quote({required this.iii,required this.delete,});


  @override
  Widget build(BuildContext context) {
    return Card(
  color: const Color.fromARGB(255, 211, 189, 121),
  margin: EdgeInsets.all(11),
  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  child: Container( 
    padding:EdgeInsets.all(11),child:Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children:[
Text(iii.Line,style: TextStyle(fontSize: 26,color: Colors.white),),
Row( children:[
  IconButton(onPressed: (){delete(iii);}, icon: Icon(Icons.delete),iconSize: 27,color: const Color.fromARGB(255, 181, 55, 46),),
Text(iii.author,style: TextStyle(fontSize: 17,color: Colors.white),),
],
),
    ],
    ),
    
  ),
);
  }
}






