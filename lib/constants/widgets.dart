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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/img$imgNum.jpg',
          fit: BoxFit.cover,
        ),
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/garbage_collector1.png',
                      height: 250,
                      fit: BoxFit.fitHeight,
                    ),
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
                  width: 130,
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

Widget eventContainer() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Container(
      height: 100,
      width: double.infinity,
      decoration: boxShadow.copyWith(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/img2.jpg'),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.low),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Jun\n12',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Volunteer solosup',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '09:00AM to 03:00PM',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[350],
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Surakarta, INA',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[350],
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Join',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
