import 'package:flutter/material.dart';
import 'about.dart';
import 'home.dart';

class SelectFigure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Invitation'),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help_outline),
            color: Colors.white,
            onPressed: (){
              aboutDialogOpen(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height:30),
            Picture(),
            SizedBox(height:50),
            FigureOne(),
          ],
        ),
      ),
    );
  }
}

class FigureOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.pink[50]!,
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.people,
                      size: 70,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.pink[50]!,
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutRoute()),
              );
            },
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      size: 70,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}


class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/select.jpg", width: 250.0, height:250, fit: BoxFit.cover),
    );
  }
}

void aboutDialogOpen(BuildContext context)
{
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Tentang"),
    content: Text("Created by 안토니 (Antonie Dev) 😎"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

