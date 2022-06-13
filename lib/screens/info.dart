import 'package:event_finder_ui/constants/links.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // uper orange box...
              Container(
                height: 450,
                width: double.infinity,
                color: Colors.orange,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 130, left: 30, right: 30, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '08\nJune',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'Surakarta\nClean City\nTogether',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 25,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Surakarta, INA',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/garbage_collector1.png',
                          height: 350,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //people lists...
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Align(
                            // alignment: Alignment.centerLeft,
                            widthFactor: 0.5,
                            child: SizedBox(
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
                    const Text(
                      'George & 40 friends join',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              // bottom text section...
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Hi Surakartans! 👋 We wait you to join with us. We need to save our city stay clean & beautiful. Let's join Surakartans!",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),

          // join & add button...
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.bookmark_add_outlined,
                      color: Colors.grey[350],
                    )),
                  ),
                  Container(
                    height: 60,
                    width: 240,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1d1e24),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 10,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Join Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'rubikBold',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // back arrow function...
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.window),
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
