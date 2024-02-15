import 'package:calculator/card.dart';
import 'package:calculator/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login extends StatefulWidget {
  login({
    required this.getresult,
    required this.getscore,
    required this.getinterpection,
  });
  final String getresult;
  final String getscore;
  final String getinterpection;

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: them ? Colors.grey.shade900 : Colors.white,
        appBar: AppBar(
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                them ? Colors.grey.shade900 : Colors.white,
              )),
              onPressed: () {
                setState(() {
                  them = !them;
                });
              },
              child: Icon(
                them ? (Icons.dark_mode) : (Icons.light_mode),
                color: them ? Colors.white : Colors.black,
              ),
            ),
          ],
          backgroundColor: them ? Colors.grey.shade900 : Colors.white,
          foregroundColor: them ? Colors.white : Colors.grey.shade900,
          elevation: 70,
          title: Center(
            child: Text("BMI CALCULATOR"),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: them ? Colors.grey.shade900 : Colors.white,
                child: Center(
                  child: Text(
                    "YOUR RESULT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: them ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: card(
                wth: double.infinity,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Text(
                          "you are ${widget.getresult}",
                          style: TextStyle(
                              fontSize: 25,
                              color: them ? Colors.black : Colors.white),
                        ),
                      ),
                    ),
                    Text(
                      widget.getscore as String,
                      style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: them ? Colors.black : Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.all(50),
                      child: Center(
                        child: Text(
                          widget.getinterpection,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: them ? Colors.black : Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 100,
                        child: ElevatedButton(
                          child: Text(
                            "RE-CalCULATE",
                            style: TextStyle(
                                color:
                                    them ? Colors.white : Colors.grey.shade900,
                                fontSize: 25),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                            them ? Colors.grey.shade900 : Colors.white,
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
