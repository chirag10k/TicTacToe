import 'package:flutter/material.dart';
import 'package:tictactoe/game_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tic Tac Toe"),
      ),
      backgroundColor: Colors.grey,
      drawer: new Drawer(
        child: new ListView(
          padding: const EdgeInsets.only(top: 150.0),
          children: <Widget>[
            new ListTile(
              title: new Text("Tic-Tac-Toe"),
              trailing: new Icon(Icons.games),
              onTap:() {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new GamePage("Tic-Tac-Toe")));
              }
            )
          ],
        ),
      ),
    );
  }
}
