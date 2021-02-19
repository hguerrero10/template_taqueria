import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_foodybite/screens/main_screen.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    
  CountDownController _controller = CountDownController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/logos/logo t&t.jpg',
              height: 200,
              width: 410
            )
          ),
          SizedBox(height: 8),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(252, 148, 61, 1)),
            backgroundColor: Colors.transparent,
            strokeWidth: 5,       
          ),

          CircularCountDownTimer(
            duration: 3,
            controller: _controller,
            width: 80,
            height: 80,
            color: Colors.white,
            fillColor: Colors.white,
            backgroundColor: null,
            strokeWidth: 5.0,
            textStyle: TextStyle(fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
            isReverse: true,
            isTimerTextShown: true,
            onComplete: ()  {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
            },
          )
        ],
      ),
    );
  }
}