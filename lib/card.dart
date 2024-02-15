import 'package:calculator/home.dart';

import 'package:flutter/material.dart';

class card extends StatefulWidget {
  final int boxnumber;
  final double wth, hght;
  final Color colour;
  final bool onclickvisiblity;
  // final Color textcolour;
  final Widget cardchild;

  card(
      {super.key,
      this.colour = Colors.transparent,
      // this.textcolour=Colors.white,

      this.wth = 180,
      this.hght = 210,
      this.boxnumber = 0,
      required this.cardchild,
      this.onclickvisiblity = false});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.hght,
      width: widget.wth,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
                them ? Colors.white : Colors.grey.shade900)),
        onPressed: () {},
        child: widget.cardchild,
      ),
    );
  }
}
