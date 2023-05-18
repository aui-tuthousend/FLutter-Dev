import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// alt + enter untuk refactor widget
//ctrl + alt + l reformat code

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //here starts important or main UI
        appBar: AppBar(
          title: Text("halo dunya"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //cont 1
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 30, 0),
                      //left top right botom
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 66, 240, 210),
                              Color.fromARGB(255, 253, 244, 193)
                            ]),
                      ),
                      width: 250,
                      height: 250,
                      child: Text(
                        "Have you ever heard of someone knocks off the door?",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.brown,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      )
                  ),
                  //cont 2
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 30),
                    //left top right botom
                    width: 250,
                    height: 250,
                    color: Colors.amberAccent,
                    child: Text(
                      "Yo sup",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 50, 0),
                    width: 250,
                    height: 250,
                    color: Colors.amberAccent,
                  )
                ],
              ),

              //ini baris ke 2
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 50, 0),
                    width: 250,
                    height: 250,
                    color: Colors.amberAccent,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
