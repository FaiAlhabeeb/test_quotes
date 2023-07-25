import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:project1() ,
      debugShowCheckedModeBanner: false,
    );
  }
}
class project1 extends StatefulWidget {
  const project1({super.key});

  @override
  State<project1> createState() => _project1State();
}

class _project1State extends State<project1> {

  List a =[
    {
      "Line1" :"No more waiting to become",
      "Line2" :"it is time to simply be."
      },
{
"Line1":"Setiap kesedihan akan berlalu ",
"Line2":"dan sctiap luka akan pulih"
}
      ];
      int myIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Quotes" ,style:TextStyle(color: const Color.fromARGB(255, 210, 203, 205),fontSize: 23,fontWeight: FontWeight.bold,),
      ),centerTitle: true,
            backgroundColor: Colors.pink[200]),
      body:
      
        Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(a[myIndex]["Line1"]
            ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        SizedBox(height: 10,),
        Text(
         a[myIndex]["Line2"] ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
       SizedBox(height: 20,),
       
        Row(
          mainAxisAlignment:MainAxisAlignment.center,children: [
FloatingActionButton(onPressed: () { 
  setState(() {
    
    if(myIndex==0)
    myIndex=0;
    else{
myIndex--;
    }
  });


 },
backgroundColor: Colors.orange[300],
child: Icon(Icons.arrow_left,size: 40,),
),
SizedBox(width: 60,),
    FloatingActionButton(onPressed: () { 
     setState(() {
      if(myIndex==a.length-1)
      myIndex=a.length-1;
      else{
 myIndex++;
      }
      
     });

     },
backgroundColor: Colors.orange[300],
child: Icon(Icons.arrow_right,size: 40,),
),    
        ],
        ),
          ],
      ),
      ),   
    );
  }
}