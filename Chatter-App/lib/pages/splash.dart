<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
// ignore_for_file: deprecated_member_use

=======
import 'package:chat_app/widgets/custombutton.dart';
>>>>>>> parent of 1c84b2d (integration)
=======
import 'package:chat_app/widgets/custombutton.dart';
>>>>>>> parent of 1c84b2d (integration)
=======
import 'package:chat_app/widgets/custombutton.dart';
>>>>>>> parent of 1c84b2d (integration)
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ChatterHome extends StatefulWidget {
  @override
  _ChatterHomeState createState() => _ChatterHomeState();
}

class _ChatterHomeState extends State<ChatterHome>
    with TickerProviderStateMixin {
  AnimationController mainController;
  Animation mainAnimation;
  @override
  void initState() {
    super.initState();
    mainController = AnimationController(
      duration: Duration(milliseconds: 1700),
      vsync: this,
    );
    mainAnimation = ColorTween(begin: Colors.indigo[900], end: Colors.grey[100])
        .animate(mainController);
    mainController.forward();
    mainController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAnimation.value,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/VEXPOcd_logo.png'),
                SizedBox(height: 15),
                // Hero(
                //   tag: 'heroicon',
                //   child: Icon(
                //     Icons.textsms,
                //     size: mainController.value * 100,
                //     color: Colors.indigo[900],
                //   ),
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Hero(
                  tag: 'HeroTitle',
                  child: Text(
                    'VEXPOcd',
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontFamily: 'Poppins',
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TyperAnimatedTextKit(
                  isRepeatingAnimation: false,
                  speed: Duration(milliseconds: 60),
                  text: [
                    "OCD makes life difficut but you can still enjoy a happy life"
                  ],
                  textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.indigo[900]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Hero(
                  tag: 'loginbutton',
                  child: CustomButton(
                    text: 'Login',
                    accentColor: Colors.indigo[900],
                    onpress: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Hero(
                  tag: 'signupbutton',
                  child: CustomButton(
                    text: 'Signup',
                    accentColor: Colors.white,
                    mainColor: Colors.indigo[900],
                    onpress: () {
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
