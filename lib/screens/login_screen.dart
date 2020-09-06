import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lihat_kursus/animation/fadeanimation.dart';
import 'package:lihat_kursus/constants.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:lihat_kursus/screens/home_screen.dart';
import 'package:lihat_kursus/services/google_service.dart';

class LoginScreen extends StatefulWidget {
  static String id = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        top: 35,
                      ),
                      height: size.height * 0.25,
                      child: TypewriterAnimatedTextKit(
                        text: ['LIHAT KURSUS'],
                        textStyle: kTextStyleFredoka,
                        speed: Duration(milliseconds: 520),
                        isRepeatingAnimation: false,
                        totalRepeatCount: 0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset('assets/images/vektor.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: FadeAnimation(
                        delay: 1.2,
                        child: Text(
                          "Merekomendasikan kursus terbaik\nlebih dari 100k pengguna",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: kPrimaryColour,
              height: size.height * 0.2,
              child: Padding(
                padding: const EdgeInsets.all(55),
                child: GoogleSignInButton(
                  borderRadius: 8,
                  onPressed: () async {
                    // login function with firebase
                    try {
                      final User user = await handleSignIn();
                      if (user != null) {
                        Navigator.pushNamed(context, HomeScreen.id);
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
