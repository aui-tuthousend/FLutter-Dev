import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;

  List<Widget> widgets = [];

  _MyAppState(){
    for(int i=1; i<= 10; i++){
      widgets.add(Text("anak ke- " + i.toString(),));
    }
  }

  void pressbutton() {
    setState(() {
      num++;
    });
  }

  void pressbutton2() {
    setState(() {
      num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("stateful flutter"),
        ),
        body: ListView(
          children: [
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30),
                  width: 200,
                  height: 200,
                  color: Colors.deepOrange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        num.toString(),
                        style: TextStyle(
                          fontSize: 10 + num.toDouble(),
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.indigo,
                          decorationThickness: 5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child:
                            ElevatedButton(onPressed: pressbutton, child: Text("add")),
                      ),
                      ElevatedButton(onPressed: pressbutton2, child: Text("min"))
                    ],
                  ),
                ),
                Column(children: widgets,

                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30,),
                  color: Colors.brown,
                  width: 100,
                  height: 100,
                ),
                Container(

                  margin: EdgeInsets.only(left: 10, top: 0),
                  color: Colors.brown,
                  width: 90,
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
