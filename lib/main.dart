import 'package:flutter/material.dart';
import 'package:test9/Quotes/quote.dart';

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
//class for card-quote(title,author)
class Quote{
  String Line;
  String author;
  Quote({required this.Line,required this.author});
}
class _project1State extends State<project1> {
//list of all quotes
  List a =[
      Quote(Line:"No more waiting to become,it is time to simply be.",author:"Fai"),
Quote(Line:"Setiap kesedihan akan berlalu. ",author: "Faisal"),


      ];
//to add new card-quote to the main screen when clicking on "Add" in showmodelbottomsheet
      add(){
        setState(() {
          a.add(Quote(Line: myController.text,author: myController2.text),);
        });}
//to delete card-quote when clicking on delete icon
        delete( Quote b){
          setState(() {
            a.remove(b);
          });
        }
        //create 2 controllers to get the text from textfield 
final myController= TextEditingController();
      final myController2= TextEditingController();

      
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
showModalBottomSheet(context: context, builder: (BuildContext context){
return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: [

TextField(
  controller: myController,
decoration: InputDecoration(
labelText: "Add New Quote",
),

),
SizedBox(height: 22,),
TextField(
  controller: myController2,
decoration: InputDecoration(
labelText: "Add Authour",
),

),
SizedBox(height: 22,),
TextButton(onPressed: (){
  Navigator.pop(context);add();
}, child: Text("Add",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Colors.black
,
),

),




),
],
  );

}
      
);
      },
      
      child: Icon(Icons.add),backgroundColor: Color.fromARGB(255, 225, 203, 137),
      ),
      appBar: AppBar(title:Text("Quotes" ,style:TextStyle(color: const Color.fromARGB(255, 210, 203, 205),fontSize: 23,fontWeight: FontWeight.bold,),
      ),centerTitle: true,
            backgroundColor: Colors.pink[200]),
      body:SingleChildScrollView( child:
       Column(
        
        children:
a.map((item) =>  quote(
//to pass the item inside the list to "quote.dart"
iii:item,
//to pass the delete function to "quote.dart"
delete:delete, 
)).toList(),
 
    


        
    

  ),
      
      )
      
    );
  }
}