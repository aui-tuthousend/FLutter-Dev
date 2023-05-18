import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flexible layout"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10)),
                        // height: 200,
                        margin: EdgeInsets.all(5),
                        child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              //sumbu Y
                              crossAxisAlignment: CrossAxisAlignment.end,
                              //sumbu X
                              children: <Widget>[
                                Text(" alo", textAlign: TextAlign.start),
                                Text("everyone")
                              ],
                            )),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(5),
                        child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              //sumbu Y
                              crossAxisAlignment: CrossAxisAlignment.center,
                              //sumbu X
                              children: <Widget>[
                                Text(" alo", textAlign: TextAlign.start),
                                Text("everyone")
                              ],
                            )),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(5),
                        child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              //sumbu Y
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //sumbu X
                              children: <Widget>[
                                Text(" alo", textAlign: TextAlign.start),
                                Text("everyone")
                              ],
                            )),
                      ),
                    ),
                  ],
                )),
            Flexible(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(5),
                )),
            Flexible(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(5),
                )),
          ],
        ),
      ),
    );
  }
}
