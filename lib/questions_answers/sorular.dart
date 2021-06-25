import 'package:flutter/material.dart';
import 'package:almancaeslestirme/quizscreens/quiz1.dart';
class MusicQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MusicQuizState();
  }
}

class MusicQuizState extends State<MusicQuiz>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Music Quiz"),
        backgroundColor: Colors.orange[200],
      ),

      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              new MaterialButton(
                height: 50.0,
                color: Colors.orange[200],
                onPressed: null,
                child: new Text("Quiz - 1",
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.purpleAccent
                ),),
              )
          ],

        ),
      ),



    );
  }

    /// quiz başlatıcı metod
void  startQuiz(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=>new Quiz1()));
    });
}



}



