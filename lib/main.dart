import 'package:flutter/material.dart';

void main() {
  runApp(OddorEven());
}

class OddorEven extends StatefulWidget {
  @override
  _OddorEvenState createState() => _OddorEvenState();
}

class _OddorEvenState extends State<OddorEven> {
  TextEditingController num = TextEditingController();
  int _a;
  var _res = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.apps),
          title: Text("Odd Or Even"),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.amberAccent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Number",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        controller: num,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            _a = int.parse(num.text);
                            if (_a % 2 == 0) {
                              _res = "Even";
                            } else {
                              _res = "Odd";
                            }
                          });
                        },
                        child: Text(
                          "Check",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Result: " + _res,
                        style: TextStyle(fontSize: 25.0),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
