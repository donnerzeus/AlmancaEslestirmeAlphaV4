//////////////// geçici ana menü///////////////////////////////////

import 'package:almancaeslestirme/dictionary/homepage.dart';
import 'package:almancaeslestirme/mainscreens/homepage2.dart';
import 'package:almancaeslestirme/quizscreens/quiz1.dart';
import 'package:almancaeslestirme/quizscreens/quiz2.dart';
import 'package:almancaeslestirme/quizscreens/quiz3.dart';
import 'package:flutter/material.dart';
import 'package:almancaeslestirme/questions_answers/sorular.dart';

class anamenu extends StatefulWidget {

  @override
  _anamenustate createState() => _anamenustate();
}

class _anamenustate extends State<anamenu> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            gradient:
            new LinearGradient(colors: [Colors.orange[700], Colors.orange[500]])),


        child: Scaffold(


            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  height: height * 0.15,
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.15),
                  height: height * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: ListView(
                    children: [
                      Text(
                        'Ana menü'.toUpperCase(),
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Center(
                        child: Container(
                          height: 1,
                          width: width * 0.8,
                          color: Colors.grey,
                        ),
                      ),




                      SizedBox(
                        height: height * 0.04,
                      ),

                      Center(

                        child: Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                  colors: [Colors.orange, Colors.orange[200]]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.blueGrey[200],
                                    offset: Offset(2, 2))
                              ]),

                          child: InkWell(

                            onTap: () {


                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));

                            },
                            child: Text(
                              " Eşleştirme ".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  //  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.7),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),

                      Text(
                        'Sorular'.toUpperCase(),
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,


                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),

                      Center(
                        child: Container(
                          height: 1,
                          width: width * 0.8,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(
                        height: height * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz1()));
                        },
                        child: Center(
                          child: Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                gradient: new LinearGradient(
                                    colors: [Colors.orange, Colors.orange[200]]),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      color: Colors.blueGrey[200],
                                      offset: Offset(2, 2))
                                ]),
                            child: Text(
                              "Müzik Aletleri".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.7),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: height * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz2()));
                        },
                        child: Center(
                          child: Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                gradient: new LinearGradient(
                                    colors: [Colors.orange, Colors.orange[200]]),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      color: Colors.blueGrey[200],
                                      offset: Offset(2, 2))
                                ]),
                            child: Text(
                              "Bilgisayar Parçaları".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.7),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: height * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz3()));
                        },
                        child: Center(
                          child: Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                gradient: new LinearGradient(
                                    colors: [Colors.orange, Colors.orange[200]]),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      color: Colors.blueGrey[200],
                                      offset: Offset(2, 2))
                                ]),
                            child: Text(
                              "Sporlar".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.7),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 8.0,
                      ),

                      SizedBox(height: 8.0),



                    ],
                  ),
                )
              ],
            ),
        )
    );
  }
}
