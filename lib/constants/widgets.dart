// ignore_for_file: prefer_const_constructors

import 'package:event_finder_ui/constants/decorations.dart';
import 'package:event_finder_ui/constants/links.dart';
import 'package:flutter/material.dart';

Widget registerImg(
  double top,
  double left,
  double conHeight,
  dynamic imgNum,
) {
  return Padding(
    padding: EdgeInsets.only(top: top, left: left),
    child: Container(
      height: conHeight,
      width: conHeight,
      decoration: boxDecoration,
      child: Image.asset(
        'assets/images/img$imgNum.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget middleContainer(String date, String peopleNumber) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      height: 350,
      width: 280,
      decoration: boxShadow.copyWith(color: Colors.white),
      child: Column(
        children: [
          SizedBox(height: 20),

          // inner container...
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$date\nJune',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Surakarta\nClean City\nTogether',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              'Surakarta, INA',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/garbage_collector1.png',
                    height: 250,
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          // bottom text
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$peopleNumber joined',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: ListView.builder(
                    itemCount: imgs.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Align(
                        // alignment: Alignment.centerLeft,
                        widthFactor: 0.5,
                        child: Container(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              imgs[index],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
