import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class bmical extends StatefulWidget {
  const bmical({super.key});

  @override
  State<bmical> createState() => _bmicalState();
}

class _bmicalState extends State<bmical> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  String text = '';
  double res = 0;
  void bmi() {
    double h = double.parse(_heightController.text) / 100;
    double w = double.parse(_weightController.text);
    setState(() {
      res = w / ((h * h));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        body: Center(
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://img.freepik.com/free-vector/abstract-black-luxury-background-with-abstracts_361591-4125.jpg'))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0, left: 12),
              child: SingleChildScrollView(
                child: Container(
                  height: 450,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 389,
                  child: Positioned(
                      top: 50,
                      left: 40,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 80.0, left: 40),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'B M I    CA L C U L A T O R',
                                  style: GoogleFonts.oswald(
                                      textStyle: TextStyle(fontSize: 30)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 350,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: TextField(
                                    controller: _heightController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: 'H E I G H T',
                                        hintMaxLines: 1,
                                        helperText: 'In cm',
                                        hintStyle: TextStyle()),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 60,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: TextField(
                                    controller: _weightController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: 'W E I G H T',
                                        hintMaxLines: 1,
                                        helperText: 'In Kg',
                                        hintStyle: TextStyle()),
                                  ),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.grey),
                                  overlayColor:
                                      MaterialStateProperty.all(Colors.white)),
                              onPressed: () {
                                bmi();
                              },
                              child: Text(
                                'C A L C U L A T E',
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(height: 20),
                          Text('Your BMI is $res'),
                        ],
                      )),
                ),
              ),
            ),
          ]),
        ));
  }
}
