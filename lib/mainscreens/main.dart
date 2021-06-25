import 'package:almancaeslestirme/model/user_list_view.dart';
import 'package:almancaeslestirme/quizscreens/quiz1.dart';
import 'package:almancaeslestirme/quizscreens/quiz2.dart';
import 'package:almancaeslestirme/quizscreens/quiz3.dart';
import 'package:almancaeslestirme/quizscreens/sozluk_services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:almancaeslestirme/dictionary/homepage.dart';
import 'package:almancaeslestirme/mainscreens/loginpage.dart';
import 'package:almancaeslestirme/dictionary/sozluk.dart';
import 'package:almancaeslestirme/mainscreens/anamenu.dart';
import 'Iletisim.dart';
import '../questions_answers/cevaplar.dart';
import 'homepage2.dart';

// LASTEST VERSİON OF PROJECT-----------------------------------

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:AnimatedSplashScreen(
          splash: Icons.accessibility_new_sharp,

          nextScreen: Login(),
          splashTransition: SplashTransition.sizeTransition,

          backgroundColor: Colors.orange[700],
          duration: 3000,
        ),

      routes:{
        "/kayıt" : (context) => Login(),
        //  "/login":(context)=> Login(),
        "/homepage" : (context) => HomePage(),
        "iletisim" : (context) => Iletisim(),
        "cevaplar" : (context) => cevaplar(),
        "homepage2": (context) => HomePage2(),
        "sozluk" : (context) => sozluk(),
        "anamenu" : (context) => anamenu(),
        "quiz1" : (context) => Quiz1(),
        "quiz2" : (context) => Quiz2(),
        "quiz3" : (context) => Quiz3(),
        "sozlukvw" : (context) => SozlukView(),


      },
    );
  }
}
class ItemModel {
  final String name;
  final String value;
  final IconData icon;
  bool accepting;








  ItemModel({this.name, this.value, this.icon, this.accepting= false});}