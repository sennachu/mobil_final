import 'package:application_1/widgets/abus.dart';
import 'package:application_1/widgets/anns.dart';
import 'package:application_1/widgets/header.dart';
import 'package:application_1/widgets/menuItem.dart';
import 'package:application_1/widgets/profileItem.dart';
import 'package:application_1/widgets/ring.dart';
import 'package:application_1/widgets/tables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.link),
              onPressed: () async {
                const githubUrl =
                    'https://github.com/sennachu'; // GitHub URL'si
                if (await canLaunch(githubUrl)) {
                  await launch(githubUrl);
                } else {
                  print('Could not launch $githubUrl');
                }
              },
            ),
          ],
          title: Text(
            "RED DRAGON FORUM",
            style: TextStyle(fontFamily: "BebasNeue", color: Colors.white),
          )),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            ProfileItem(
              avatar: "assets/images/oyun1.jpg",
              name: "sennachu",
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Column(
              children: [
                Divider(),
                MenuItem(
                  title: "home",
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
                Divider(),
                MenuItem(
                  title: "Game Library",
                  icon: Icon(
                    Icons.gamepad,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/yourclass");
                  },
                ),
                Divider(),
                MenuItem(
                  title: "ACTIVITY",
                  icon: Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/exams");
                  },
                ),
                Divider(),
                MenuItem(
                  title: "ACCOUNT DETAILS",
                  icon: Icon(
                    Icons.euro,
                    color: Colors.green,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/payment");
                  },
                ),
                Divider(),
                MenuItem(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/welcome", (route) => false);
                  },
                  title: "LOG OUT",
                  icon: Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                ),
                Divider(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Version 1.0.7",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.1,
            0.4,
            0.6,
            0.9,
          ],
          colors: [Colors.black, Colors.black87, Colors.black, Colors.black87],
        )),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Text(
                          "Welcome to RED DRAGON Discussions",
                          style: TextStyle(
                              fontFamily: "BebasNeue",
                              fontSize: 30,
                              color: Color.fromRGBO(255, 30, 30, 1)),
                        ),
                        Text(
                          "You can exchange ideas with people here.",
                          style: TextStyle(
                              fontFamily: "BebasNeue",
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
                              Text("ZOGII",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 30,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("70 LVL",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Color.fromRGBO(255, 0, 255, 1),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("has 338 games",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                        ),
                        Anns(
                            number: "18",
                            date: "December 2023, Monday",
                            title:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. when an unknown printer took of type and scrambled"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
                              Text("Sennachu",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 30,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("20 LVL",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Color.fromRGBO(255, 128, 0, 1),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("has 131 games",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                        ),
                        Anns(
                            number: "20",
                            date: "December 2023, Wednesday",
                            title:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. when an unknown printer took of type and scrambled"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
                              Text("DOQQAN",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 30,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("22 LVL",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Color.fromRGBO(204, 204, 0, 1),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("has 78 games",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                        ),
                        Anns(
                            number: "21",
                            date: "December 2023, Thursday",
                            title:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. when an unknown printer took of type and scrambled"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
                              Text("!GÖKAY",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 30,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("11 LVL",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Color.fromRGBO(0, 204, 0, 1),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("has 71 games",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                        ),
                        Anns(
                            number: "24",
                            date: "December 2023, Sunday",
                            title:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. when an unknown printer took of type and scrambled"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
                              Text("Creedz",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 30,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("10 LVL",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Color.fromRGBO(102, 102, 205, 1),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("has 53 games",
                                  style: TextStyle(
                                    fontFamily: "BebasNeue",
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                        ),
                        Anns(
                            number: "25",
                            date: "December 2023, Monday",
                            title:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. when an unknown printer took of type and scrambled"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        // Text(
                        //   "Release times of new games",
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontFamily: "BebasNeue",
                        //       fontSize: 30),
                        // ),
                        // SingleChildScrollView(
                        //   scrollDirection: Axis.horizontal,
                        //   child: Row(
                        //     children: [
                        //       SingleChildScrollView(
                        //         scrollDirection: Axis.horizontal,
                        //         child: Row(
                        //           children: [
                        //             Tables(date:"sdfsdffffsd",name:"sdfsdsffd",title: "sdsdfffffsd",),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Having problems with the application?",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "BebasNeue",
                              fontSize: 28),
                        ),
                        Text(
                          "Send us an email.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "BebasNeue",
                              fontSize: 25),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Abus(
                                  photo: "assets/images/bug-fix.jpg",
                                  name: "Send an Email...",
                                  title: "NEW BUG FIX V4.0"),
                              SizedBox(
                                width: 10,
                              ),
                              Abus(
                                  photo: "assets/images/bug-fix.jpg",
                                  name: "Send an Email...",
                                  title: "NEW BUG FIX V3.0"),
                              SizedBox(
                                width: 10,
                              ),
                              Abus(
                                  photo: "assets/images/bug-fix.jpg",
                                  name: "Send an Email...",
                                  title: "NEW BUG FIX V2.0"),
                              SizedBox(
                                width: 10,
                              ),
                              Abus(
                                  photo: "assets/images/bug-fix.jpg",
                                  name: "Send an Email...",
                                  title: "NEW BUG FIX V1.0"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
