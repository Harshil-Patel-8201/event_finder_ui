import 'package:event_finder_ui/constants/decorations.dart';
import 'package:event_finder_ui/constants/widgets.dart';
import 'package:event_finder_ui/screens/info.dart';
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // profile container...
                Padding(
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
                            children: [
                              // loaction section...
                              const Text(
                                'Current location',
                                style: TextStyle(
                                  color: Color(0xffbbbbbb),
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color(0xffff6b01),
                                    size: 15,
                                  ),
                                  const Text(
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
                        SizedBox(
                          height: 60,
                          width: 50,
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 60,
                                width: 50,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/user.png',
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 2, top: 8),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: const BoxDecoration(
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

                // serach box...
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: boxShadow.copyWith(color: Colors.white),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.search_sharp,
                          color: Color.fromARGB(255, 241, 156, 94),
                          size: 25,
                        ),
                        const SizedBox(width: 5),
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
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const InfoPage(),
                              ),
                            );
                          },
                          child: middleContainer('8', '43'),
                        ),
                        middleContainer('10', '30')
                      ],
                    ),
                  ),
                ),

                // events for you (text)...
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Event for you',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View more',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // event containes...
                eventContainer(),
                eventContainer(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              width: double.infinity,
              color: Colors.white.withOpacity(0.95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.home_filled,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.window,
                    color: Colors.grey[400],
                  ),
                  Icon(
                    Icons.bookmark_add_outlined,
                    color: Colors.grey[400],
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
