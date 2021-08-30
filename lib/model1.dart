import 'package:flutter/material.dart';
import 'package:rec_av/main.dart';
import 'package:rec_av/model2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFE35450),
      ),
    );
  }
}

class Model1 extends StatefulWidget {
  const Model1({Key? key}) : super(key: key);

  @override
  _Model1State createState() => _Model1State();
}

class _Model1State extends State<Model1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(60),
              child: Image.asset("images/date.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Select the Date",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "Select the dat, pick your ticket. we give you the best price. We guaranted!",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Icon(
                    Icons.travel_explore_rounded,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Center(
                child: ElevatedButton(
                    child: Icon(Icons.date_range),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Model1()),
                      );
                    }),
              ),
            ]),
            Padding(padding: EdgeInsets.all(10)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                  child: Icon(Icons.home_filled),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Model2()),
                    );
                  }),
            ]),
            Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}
