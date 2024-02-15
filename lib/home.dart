import 'package:calculator/Icon.dart';
import 'package:calculator/calculator.dart';
import 'package:calculator/card.dart';
import 'package:calculator/drawer.dart';

import 'package:calculator/loginpage.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class spage extends StatefulWidget {
  const spage({super.key});

  @override
  State<spage> createState() => _spageState();
}

int height = scale ? 50 : 180;
int weight = 60;
int AGE = 25;
bool scale = false;
bool them = false;
bool malevisib = true;
bool femalevisib = true;

class _spageState extends State<spage> {
  themee() {
    setState(() {
      them = !them;
    });
  }

  // maxrange() {
  //   setState(() {
  //     maximum = scale ? 86 : 220.0;
  //   });
  // }

  // minrange() {
  //   setState(() {
  //     minum = scale ? 47 : 120.0;
  //   });
  // }

  Color iconcolour = them ? Colors.white : Colors.grey.shade900;

  @override
  Widget build(BuildContext context) {
    // bool upbuttontheme = true;
    return MaterialApp(
      theme: them ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      color: Colors.grey.shade900,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                them ? Colors.grey.shade900 : Colors.white,
              )),
              onPressed: () {
                themee();
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
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Visibility(
                      visible: malevisib,
                      child: card(

                          // onclickvisiblity: upbuttontheme,
                          colour: iconcolour,
                          boxnumber: 1,
                          cardchild: finalcard(
                            ICon: (FontAwesomeIcons.mars),
                            text: "MALE",
                          )),
                    ),
                  )),
                  Expanded(
                    child: Visibility(
                        visible: femalevisib,
                        child: card(
                            // onclickvisiblity: upbuttontheme,
                            colour: iconcolour,
                            boxnumber: 2,
                            cardchild: finalcard(
                              ICon: (FontAwesomeIcons.venus),
                              text: "FEMALE",
                            ))),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                    child: Expanded(
                  child: card(
                      colour: them ? Colors.white : Colors.grey.shade900,
                      boxnumber: 4,
                      wth: 10000,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Height",
                            style: TextStyle(
                                color: them ? Colors.black : Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor:
                                        them ? Colors.black : Colors.white,
                                    onPressed: () {
                                      if (scale = !scale)
                                        setState(() {
                                          height = 180;
                                          scale = false;
                                        });
                                    },
                                    child: Text(
                                      "CM",
                                      style: TextStyle(
                                        color:
                                            them ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    height.toString(),
                                    style: TextStyle(
                                        color:
                                            them ? Colors.black : Colors.white,
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    scale ? "INCHES" : "CM",
                                    // "${mylist["Ahmad"]}",
                                    //  "${mylist.values}",
                                    //  "${mylist.keys}",
                                    style: TextStyle(
                                        color:
                                            them ? Colors.black : Colors.white),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor:
                                        them ? Colors.black : Colors.white,
                                    onPressed: () {
                                      if (scale == false)
                                        setState(() {
                                          height = 50;
                                          scale = !scale;
                                        });
                                    },
                                    child: Text(
                                      "in",
                                      style: TextStyle(
                                        color:
                                            them ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              mybutton(
                                iconData: FontAwesomeIcons.minus,
                                onpress: () {
                                  // mylist["A"] = 0327610683;
                                  // print(mylist["Ahmad"]);
                                  // Navigator.pushNamed(context, Myroutes.login);
                                  setState(() {
                                    (scale == false)
                                        ? {
                                            if (height > 120)
                                              setState(() {
                                                height--;
                                              })
                                          }
                                        : {
                                            if (height > 47)
                                              setState(() {
                                                height--;
                                              })
                                          };
                                  });
                                },
                              ),
                              SliderTheme(
                                data: SliderThemeData(
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 15),
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 50)),
                                child: Expanded(
                                  child: Slider(
                                    // thumbColor: them ? Colors.black : Colors.white,

                                    value: height.toDouble(),
                                    onChanged: (value) {
                                      setState(() {
                                        {
                                          height = value.round();
                                        }
                                      });
                                    },
                                    activeColor:
                                        them ? Colors.black : Colors.white,
                                    inactiveColor: them
                                        ? Colors.grey.shade700
                                        : Colors.white54,

                                    min: scale ? 47 : 120,

                                    max: scale ? 86 : 220,
                                  ),
                                ),
                              ),
                              mybutton(
                                onpress: () {
                                  (scale == false)
                                      ? {
                                          if (height < 220)
                                            setState(() {
                                              height++;
                                            })
                                        }
                                      : {
                                          if (height < 86)
                                            setState(() {
                                              height++;
                                            })
                                        };
                                },
                                iconData: FontAwesomeIcons.plus,
                              ),
                            ],
                          )
                        ],
                      )),
                )),
              ),
              Row(
                children: [
                  Expanded(
                      child: card(
                          colour: them ? Colors.white : Colors.grey.shade900,
                          boxnumber: 5,
                          cardchild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("WEIGHT ",
                                  style: TextStyle(
                                    color: them ? Colors.black : Colors.white,
                                  )),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "$weight ",
                                      style: TextStyle(
                                          color: them
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "KG",
                                      style: TextStyle(
                                          color: them
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor:
                                        them ? Colors.black : Colors.white,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: them ? Colors.white : Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  FloatingActionButton(
                                      backgroundColor:
                                          them ? Colors.black : Colors.white,
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: Icon(
                                        FontAwesomeIcons.plus,
                                        color:
                                            them ? Colors.white : Colors.black,
                                      )),
                                ],
                              ),
                            ],
                          ))),
                  Expanded(
                      child: card(
                    colour: them ? Colors.white : Colors.grey.shade900,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                            color: them ? Colors.black : Colors.white,
                          ),
                        ),
                        Text(
                          "$AGE",
                          style: TextStyle(
                            color: them ? Colors.black : Colors.white,
                            fontSize: 50,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor:
                                  them ? Colors.black : Colors.white,
                              onPressed: () {
                                setState(() {
                                  AGE--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: them ? Colors.white : Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              backgroundColor:
                                  them ? Colors.black : Colors.white,
                              onPressed: () {
                                setState(() {
                                  AGE++;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: them ? Colors.white : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                          color: them ? Colors.grey.shade900 : Colors.white,
                          fontSize: 25),
                    ),
                    onPressed: () {
                      calculator BMI =
                          calculator(Height: height, Weight: weight);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => login(
                                    getscore: BMI.calculatrBMI(),
                                    getinterpection: BMI.getinterpretation(),
                                    getresult: BMI.getresult(),
                                    // getscore: BMI.calculatrBMI(),
                                  )));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      them ? Colors.white : Colors.grey.shade900,
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: mydrawer(),
      ),
    );
  }
}

class mybutton extends StatelessWidget {
  mybutton({required this.iconData, required this.onpress});
  final IconData iconData;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onpress(),
      elevation: 10,
      constraints: BoxConstraints(minHeight: 40, minWidth: 40),
      child: Icon(
        iconData,
        color: them ? Colors.white : Colors.black,
      ),
      shape: CircleBorder(),
      fillColor: them ? Colors.black : Colors.white,
    );
  }
}
