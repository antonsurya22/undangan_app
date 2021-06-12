import 'select_figure.dart';
import 'package:flutter/material.dart';


class AboutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('Info'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectFigure()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Picture(),
            TextName(),
            studentNumber(),
            ownClass(),
            RowCardOne(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 25,
          color: Colors.pink,
          alignment: Alignment.center,
          child: Text(
            'Developed by Antonie Dev',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 95,
        backgroundColor: Colors.pinkAccent,
        child: CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage('assets/anton.jpg'),
        ),
      ),
      margin: const EdgeInsets.only(top: 30.0),
    );
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'I Gusti Nyoman Anton Surya Diputra',
        style: TextStyle(
          color: Colors.pink,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}

class studentNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '1915051027',
        style: TextStyle(
          color: Colors.pink,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
      margin: const EdgeInsets.only(top: 5.0),
    );
  }
}

class ownClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'PTI 4 A',
        style: TextStyle(
          color: Colors.pink,
          fontSize: 17,
        ),
        textAlign: TextAlign.center,
      ),
      margin: const EdgeInsets.only(top: 5.0),
    );
  }
}


class RowCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.pinkAccent,
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top:20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    size: 50,
                    color: Colors.pink,
                  ),
                  Text(
                    'Undiksha',
                    style: TextStyle(color: Colors.pink, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.pinkAccent,
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.menu_book,
                    size: 50,
                    color: Colors.pink,
                  ),
                  Text(
                    'PTI 4 A',
                    style: TextStyle(color: Colors.pink, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );

  }
}



