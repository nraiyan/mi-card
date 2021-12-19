import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Micard());
}

class Micard extends StatefulWidget {
  const Micard({Key? key}) : super(key: key);

  @override
  State<Micard> createState() => _MicardState();
}

class _MicardState extends State<Micard> {
  double level = 77;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(),
    );
  }
}

class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  double level = 78;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level++;
          });
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.greenAccent,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/rayyan.jpg'),
                radius: 100,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Raiyan Nazeer Mohammed',
                style: TextStyle(fontSize: 33, fontFamily: 'ImperialScript')),
            SizedBox(
              height: 15,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.email),
                  Text('raiyannazeer@gmail.com'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.phone),
                  Text('07038994955'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: LinearProgressIndicator(
                value: level / 100,
              ),
            ),
            if (level == 100) Text('Congratulation Raiyan'),
          ]),
    );
  }
}
