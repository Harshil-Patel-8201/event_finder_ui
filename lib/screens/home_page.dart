// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:event_finder_ui/constants/decorations.dart';
import 'package:event_finder_ui/constants/widgets.dart';
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("-------- Home Page -----------");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // profile container...
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // loaction section...
                          Text(
                            'Current location',
                            style: TextStyle(
                              color: Color(0xffbbbbbb),
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xffff6b01),
                                size: 15,
                              ),
                              Text(
                                'Surakarta, INA',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'rubikBold',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // image profile part...
                    Container(
                      height: 60,
                      width: 50,
                      child: Stack(
                        children: [
                          Container(
                            height: 60,
                            width: 50,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/user.png',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2, top: 8),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Color(0xffff6b01),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          // serach box...
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: boxShadow.copyWith(color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search_sharp,
                    color: Color.fromARGB(255, 241, 156, 94),
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Search for event',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Middle big container...
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  // main container..
                  middleContainer('8', '43'),
                  middleContainer('10', '30')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
