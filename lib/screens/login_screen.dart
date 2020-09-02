import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lihat_kursus/constants.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginScreen extends StatelessWidget {
  static String id = "login_screen";

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
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                        top: 35,
                      ),
                      child: TypewriterAnimatedTextKit(
                        text: ['LIHAT\nKURSUS'],
                        textStyle: kTextStyleFredoka,
                        speed: Duration(milliseconds: 600),
                        isRepeatingAnimation: false,
                        totalRepeatCount: 0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset('assets/images/vektor.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        "Merekomendasikan kursus terbaik\nlebih dari 100k pengguna",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Raleway',
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
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
