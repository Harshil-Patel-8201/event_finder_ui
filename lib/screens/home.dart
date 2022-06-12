// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:event_finder_ui/constants/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print("-------- Home Screen run -----------");
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Text(
                      'We share all event like charity,\nworkshop, bold drive, etc.',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w800
                          // fontFamily: 'rubikBold',
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: boxDecoration,
                          child: Image.network(
                            ImgLinks().netImg1,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50, top: 30),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: boxDecoration,
                          child: Image.network(
                            ImgLinks().netImg2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0, top: 130),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: boxDecoration,
                          child: Image.network(
                            ImgLinks().netImg3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 290),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: boxDecoration,
                          child: Image.network(
                            ImgLinks().netImg4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80, top: 250),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: boxDecoration,
                          child: Image.network(
                            ImgLinks().netImg5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 50, right: 50),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
