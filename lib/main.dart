import 'package:flutter/material.dart';

final leftSection = new Container(
  
  child: new Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      new  CircleAvatar(backgroundColor: Colors.red)
    ],
  )
 
);
final righttSection = new Container(
  child: new Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      new Text("you there?", style: TextStyle(color: Colors.black))
    ],
  )
);

void main() => runApp(MyApp());


abstract class ListItem {}

class ListElements implements ListItem{
  final String one;
  final String two;

  ListElements(this.one, this.two);
}

final items = List<ListItem>.generate(
  1200, 
  (i) => i % 6 == 0
    ?  ListElements("one $one"), "two $two"),
 ),);


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var pinkColor = Colors.pink;
        return MaterialApp(
          title: 'Flutter Demoooo',
          theme: ThemeData(
            // is not restarted.
            primarySwatch: pinkColor
      ),
      home: Scaffold(appBar: AppBar(
        title: Text("My Catalog"),
        actions: <Widget>[
          Icon(Icons.star)
        ],
      ),
      body: Material(
        color: Colors.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftSection,
              righttSection
            ],
          )
        )
      ),)
    );
  }
}


