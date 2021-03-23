import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task1',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  String planetImage = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/220px-The_Earth_seen_from_Apollo_17.jpg";
  String Name = "Earth";
  String fact = "Earth is the third planet from the Sun and the only astronomical object known to harbor life";




  void changedataButtonjupiter(){
    setState(() {

      planetImage =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg/200px-Jupiter_and_its_shrunken_Great_Red_Spot.jpg";
      Name = "Jupiter";
      fact = "Jupiter  is the fifth from the Sun and the largest planet in the solar system ";
    });
  }



    void changedataButtonearth(){
    setState(() {

      planetImage =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/220px-The_Earth_seen_from_Apollo_17.jpg";
      Name = "Earth";
      fact = "Earth is the third planet from the Sun and the only astronomical object known to harbor life";

    });
  }
  void changedataButtonmars() {
    setState(() {

      planetImage =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/220px-OSIRIS_Mars_true_color.jpg";
      Name = "MARS";
      fact = "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System";
    });









    }
    bool isPressed = false;
    @override
    Widget build(BuildContext context) {
      return Container(
        child: Scaffold(
          appBar: AppBar(centerTitle: true, title: Text('Three planets')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "this is planet $Name",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.network(
                    '$planetImage', fit: BoxFit.fitWidth),

                Text(
                  "$fact"
                ),

                SizedBox(
                  height: 5,
                ),



                RaisedButton(
                  onPressed: changedataButtonmars,
                  child: Text(
                    "MARS",
                  ),



                ),

                SizedBox(
                  height: 10,
                ),

                RaisedButton(
                  onPressed: changedataButtonearth,
                  child: Text(
                      "Earth"
                  ),
                ),

                SizedBox(
                  height: 10,
                ),


                RaisedButton(
                  onPressed: changedataButtonjupiter,
                  child: Text(
                      "Jupiter"
                  ),
                ),

              ],
            ),
          ),
          floatingActionButton:
          FloatingActionButton(
              child: Icon(Icons.radio_button_off_sharp), onPressed: () {
            isPressed = true;
          }),
        ),
      );
    }
  }

