import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MusicQuiz {
  var images = [
    "basketbol","eskrim","futbol","hentbol","tenis"
  ];

  var questions = [
    "is a popular team game and sport with a hand-held ball. two teams of five each in basketball.",
    "It is a kind of offensive and defensive sport performed on a track between two people related to an attack, a belli.",
    "Two teams of eleven players, is a unique ball team sport.",
    "Each team playing the game of handball consists of 7. Handball game constitutes the main purpose.",
    "Rafael Nadal Parera is a Spanish tennis player. He is the only male tennis player to win a Grand Slam on clay, turf and hard court in a single season."
  ];

  var choices = [
    ["Basketball","Fußball","Ringen","Tennis","Airsoft"],
    ["Futsal","Fechten","Ringen","Basketball","Airsoft"],
    ["Basketball","Airsoft","Fußball","Tennis","Schwimmen"],
    ["Schwimmen","Fußball","Handball","Polo","Basketball"],
    ["Airsoft","Schwimmen","Tennis","Fechten","Basketball"],
  ];

  var correctAnswers = [
    "Basketball","Fechten","Fußball","Handball","Tennis"
  ];
}

var finalScore = 0;
var questionNumber = 0;
var quiz = new MusicQuiz();
var PREfinalScore=0;
var wrongpercent=0;
String holder;


class Quiz3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new Quiz3State();
  }
}


class Quiz3State extends State<Quiz3>{
  @override
  Widget build(BuildContext context) {

    return new WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
        body: new Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: new Column(

            children: <Widget>[

              new Padding(padding: EdgeInsets.all(20.0)),

              new Container(
                alignment: Alignment.centerRight,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Question ${questionNumber + 1 } of ${quiz.questions.length}",
                      style: new TextStyle(
                          fontSize: 22.0
                      ),),
                    new Text("Score: $finalScore",
                      style: new TextStyle(
                          fontSize: 22.0
                      ),)

                  ],
                ),
              ),
              //image
              new Padding(padding: EdgeInsets.all(10.0)),
              new Image.asset(
                  "images/${quiz.images[questionNumber]}.jpg"
              ),
              new Padding(padding: EdgeInsets.all(10.0),),

              new Text(quiz.questions[questionNumber],
                style: new TextStyle(
                  fontSize: 20.0,

                ),),
              new Padding(padding: EdgeInsets.all(10.0),),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[




                  //buton 1
                  new  Center(

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
                                color: Colors.deepOrange[200],
                                offset: Offset(2, 2))
                          ]),

                      child:  InkWell(

                        onTap: () {
                          if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber])
                          {
                            debugPrint("correct");
                            finalScore++;
                          }
                          else{
                            debugPrint("wrong");
                          }
                          updateQuestion();


                        },
                        child:new Text(quiz.choices[questionNumber][0],
                          style: new TextStyle(
                            fontSize: 20,
                            color: Colors.white,


                          ),),),
                    ),
                  ),
                  //buton 2
                  new  Center(

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
                                color: Colors.deepOrange[200],
                                offset: Offset(2, 2))
                          ]),

                      child:  InkWell(

                        onTap: () {
                          if(quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber])
                          {
                            debugPrint("correct");
                            finalScore++;
                          }
                          else{
                            debugPrint("wrong");
                          }
                          updateQuestion();

                        },
                        child:new Text(quiz.choices[questionNumber][1],
                          style: new TextStyle(
                            fontSize: 20,
                            color: Colors.white,


                          ),),),
                    ),
                  ),



                ],
              ),
              new Padding(padding: EdgeInsets.all(10.0),),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //buton 3
                  new  Center(

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
                                color: Colors.deepOrange[200],
                                offset: Offset(2, 2))
                          ]),

                      child:  InkWell(

                        onTap: () {
                          if(quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber])
                          {
                            debugPrint("correct");
                            finalScore++;
                          }
                          else{
                            debugPrint("wrong");
                          }
                          updateQuestion();

                        },
                        child:new Text(quiz.choices[questionNumber][2],
                          style: new TextStyle(
                            fontSize: 20,
                            color: Colors.white,


                          ),),),
                    ),
                  ),

                  //buton 4
                  new  Center(

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
                                color: Colors.deepOrange[200],
                                offset: Offset(2, 2))
                          ]),

                      child:  InkWell(

                        onTap: () {
                          if(quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber])
                          {
                            debugPrint("correct");
                            finalScore++;
                          }
                          else{
                            debugPrint("wrong");
                          }
                          updateQuestion();

                        },
                        child:new Text(quiz.choices[questionNumber][3],
                          style: new TextStyle(
                            fontSize: 20,
                            color: Colors.white,


                          ),),),
                    ),
                  ),



                ],
              ),
              new Padding(padding: EdgeInsets.all(10.0)),

              new Container(
                alignment: Alignment.bottomCenter,
                child: new MaterialButton(
                  color: Colors.red,
                  minWidth:  240.0,
                  height: 40.0,
                  onPressed: resetQuiz,
                  child: new Text("Quit",
                    style: new TextStyle(
                        fontSize:18.0,
                        color: Colors.white
                    ),),
                ),
              )


            ],
          ),
        ),
      ),
    );


  }


  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;

    });
  }

  void updateQuestion(){
    setState(() {
      if(questionNumber == quiz.questions.length - 1){
        Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Summary(score: finalScore)));
        PREfinalScore = finalScore * 20;
        holder = PREfinalScore.toString();
        wrongpercent = 100 - PREfinalScore;
      }else {
        questionNumber++;
      }

    });
  }
}

class Summary extends StatelessWidget
{
  final int score;
  Summary({Key key, @required this.score}) : super(key : key);
  @override
  Widget build (BuildContext context){
    return new WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
        body: new  Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Final Score: $score",
                style: new TextStyle(
                    fontSize: 25.0
                ),),

              new Padding(padding: EdgeInsets.all(10.0)),
              new MaterialButton(
                color: Colors.red,
                onPressed: (){
                  questionNumber= 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: new Text("Reset Quiz",
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                    )),

              ),
              new CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 8.0,
                percent: 0.8,
                center: new Text( "$holder %"),
                progressColor: Colors.green,

              ),

              new CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 8,
                percent:   0.2,
                center: new Text("$wrongpercent %"),
                progressColor: Colors.red,

              )

            ],
          ),
        ),
      ),
    );

  }
}