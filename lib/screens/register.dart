// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:event_finder_ui/constants/decorations.dart';
import 'package:event_finder_ui/constants/links.dart';
import 'package:event_finder_ui/constants/widgets.dart';
import 'package:event_finder_ui/screens/home_page.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    print("-------- Register Page -----------");
    return Scaffold(
      body: Stack(
        children: [
          // background image...
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/bg.png'),
          ),

          // UI parts...
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title text...
                    Text(
                      'Find Intrested\nEvent to join',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: 'rubikBold',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // dummy text...
                    Text(
                      'We share all events like charity,\nworkshop, blood drive, etc.',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w500
                          // fontFamily: 'rubikBold',
                          ),
                    ),
                  ],
                ),
              ),

              // midddle images...
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    //          T   L  R   H  I
                    registerImg(25, 50, 80, 1),
                    registerImg(50, 230, 55, 2),
                    registerImg(150, 130, 80, 3),
                    registerImg(250, 210, 80, 4),
                    registerImg(350, 50, 55, 5),
                  ],
                ),
              ),
            ],
          ),

          // register button...
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, left: 50, right: 50, top: 50),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF1d1e24),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 10,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'rubikBold',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // sign in part...
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'already have an account? ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFacacac),
                        ),
                      ),
                      Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFf29611),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
