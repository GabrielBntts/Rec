import 'package:flutter/material.dart';
import 'package:rec_av/model1.dart';
import 'package:rec_av/model2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF538BFC),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(60),
              child: Image.asset("images/travel.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Ready To Travel",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "Choose your destination, Plan your trip. Pick the best place for your  holiday",
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
                      MaterialPageRoute(builder: (context) => MyApp()),
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
