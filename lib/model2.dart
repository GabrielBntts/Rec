import 'package:flutter/material.dart';
import 'package:rec_av/main.dart';
import 'package:rec_av/model1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFFF9800),
      ),
    );
  }
}

class Model2 extends StatefulWidget {
  const Model2({Key? key}) : super(key: key);

  @override
  _Model2State createState() => _Model2State();
}

class _Model2State extends State<Model2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(60),
              child: Image.asset("images/home.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Feels Like Home",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "Enjoys  your Holidays! Dont forget to take a photo!",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text('\n'),
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
