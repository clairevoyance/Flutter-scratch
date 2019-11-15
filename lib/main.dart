import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.red,
        brightness: Brightness.dark,
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {

  String mytext = "Hello World!";

  void _changeText(){
    setState(() {
      if(mytext.startsWith("H"))
        mytext = "Welcome to my app!!";
      else
        mytext = "Hello World";
    });
  }

  Widget _bodyWidget(){
    return Container(
        padding: EdgeInsets.all(8.0),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(mytext,style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.orange,
                ),),
    ],
    ),
    ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Homepage"),
      ),
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
          onPressed: _changeText,
          child: Icon(Icons.arrow_upward),
      ),
    );
  }
}
