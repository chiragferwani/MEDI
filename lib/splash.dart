import 'package:flutter/material.dart';
import 'package:medi/home.dart';
import 'package:medi/main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> GeminiChatBot()));
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: mq.width *.5,
            left: mq.width * .15,
            width: mq.width * .7,
            child: Image.asset('assets/images/medi.png')),
            //label
            Positioned(
              bottom: mq.height * .35,
              width: mq.width,
              child: Text('MEDI', 
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'boldfont',
                fontSize: 30
                ),
              )
              ),
              //label
            Positioned(
              bottom: mq.height * .31,
              width: mq.width,
              child: Text('Medical Expertise Delivered Instantly', 
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'boldfont',
                fontWeight: FontWeight.bold,
                fontSize: 20
                ),
              )
              )
            ],
            ),
    );
  }
}