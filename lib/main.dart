import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: myapp(),
   );
  }
}

class myapp extends StatelessWidget {
  @override
  // This widget is the root of your application.

  createAlertDialog (BuildContext context){
 // TextEditingController customController = TextEditingController();
  return showDialog(context:context, builder: (context){
    return AlertDialog(
      title: Text("Contact me",
      textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey[800],
        ),
      ),
      content:

          Text("""
              Twitter: @hadiza______
              Instagram: @drissel_studio
              """,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[800],
          ),
          ),


      actions: <Widget>[
        FlatButton(
          child: Text("cancel"),
          onPressed: (){Navigator.of(context).pop(); },
        ),
      ],

    );
  });
  }

  Widget build(BuildContext context) {
    return   Scaffold(
    backgroundColor: Colors.grey[200],
    appBar: AppBar(
    centerTitle: true,
    backgroundColor: Colors.red,
    title: Text("My Portfolio"),
    ),

    body: Column(

    children: <Widget>[

    Padding(
    padding: const EdgeInsets.only(top:50.0),
    child: CircleAvatar(
    radius: 70,
    backgroundImage: AssetImage('assets/av1.PNG'),
    ),
    ),

    Padding(
    padding: const EdgeInsets.only(top:10.0),
    child: Text(
    "Hey, there!",
    style: TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
    ),
    ),
    ),


    Padding(
    padding: const EdgeInsets.only(top:10.0),
    child:
    Column(
    children: <Widget>[
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget>[
    Container(
    width:300,

    decoration:BoxDecoration(
    color: Colors.grey[300],

    borderRadius: BorderRadius.circular(10),
    ),
    child:
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("""I am Hadiza. I joined the HNG internship and this is a task I was given. I really hope to excel at this flutter.""",
    //
    textAlign: TextAlign.center,
    style: TextStyle(

    ),
    ),
    ),
    ),
    ],
    ),

    Padding(
    padding: const EdgeInsets.only(top: 45.0),
    child:
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget>[

    Text("LIKES",
    //
    //textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
    ),
    ),

    ],
    ),
    ),
    ],
    ),

    ),

    Padding(
    padding: const EdgeInsets.only(top:15.0),
    child:
    Container(
    width: 300.0,
    child: Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

    Column(
    children: <Widget>[
    CircleAvatar(
    radius: 20.0,
    backgroundImage: AssetImage('assets/reading.jpg'),
    ),
    Text("Reading"),
    ],
    ),

    Column(
    children: <Widget>[
    CircleAvatar(
    radius: 20.0,
    backgroundImage: AssetImage('assets/eating.jpg'),
    ),
    Text("Eating"),
    ],
    ),

    Column(
    children: <Widget>[
    CircleAvatar(
    radius: 20.0,
    backgroundImage: AssetImage('assets/swimming.jpg'),
    ),
    Text("Swimming"),
    ],
    ),

    Column(
    children: <Widget>[
    CircleAvatar(
    radius: 20.0,
    backgroundImage: AssetImage('assets/watching.jpg'),
    ),
    Text("Watching"),
    ],
    ),



    ],

    ),

    ),
    ),


    Padding(
    padding: const EdgeInsets.only(top: 35.0),
    child:
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget>[

    Text("DISLIKES",
    //
    //textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
    ),
    ),

    ],
    ),
    ),

    Padding(
    padding: const EdgeInsets.only(top:15.0),
    child:
    Container(
    width: 150.0,
    child: Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

    Column(
    children: <Widget>[
    CircleAvatar(
    radius: 20.0,
    backgroundImage: AssetImage('assets/fire.jpg'),
    ),
    Text("Fire"),
    ],
    ),

    Column(
    children: <Widget>[
    CircleAvatar(
    radius: 20.0,
    backgroundImage: AssetImage('assets/lizard.jpg'),
    ),
    Text("Lizards"),
    ],
    ),





    ],

    ),

    ),
    ),


    Column(
    children: <Widget>[
    Padding(
    padding: EdgeInsets.only(top:20.0),
    child:
    Column(
    children: <Widget>[
    IconButton(
    icon: Icon(Icons.account_circle),
    color: Colors.grey,
    iconSize: 40.0,
    onPressed: () {
    createAlertDialog(context);
    },
    ),
    Text("Contact me")
    ],
    ),
    ),
    ],
    ),



    ],
    ),

    );

     // localizationsDelegates: [
       // ApplicationLocalizations.delegate,
    //    GlobalMaterialLocalizations.delegate,
    //    GlobalWidgetsLocalizations.delegate,
    //  ],




  }
}

