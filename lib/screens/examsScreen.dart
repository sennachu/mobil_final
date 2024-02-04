import 'package:application_1/widgets/header.dart';
import 'package:application_1/widgets/tables.dart';
import 'package:flutter/material.dart';

class ExamsScreen extends StatefulWidget {
  const ExamsScreen({super.key});

  @override
  State<ExamsScreen> createState() => _ExamsScreenState();
}

class _ExamsScreenState extends State<ExamsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text("Friends Activity", style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 30),),
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
          ),
        ),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("ONLINE FRIENDS", style: TextStyle(color: Colors.green, fontFamily: "BebasNeue", fontSize: 40),),
                            ),
                            Tables(
                              date: "ZOGII",
                              name: "IN GAME",
                              title: "Playing Crysis Remastered",
                            ),
                            Tables(
                              date: "Sennachu",
                              name: "IN GAME",
                              title: "Playing Feign",
                            ),
                            Tables(
                              date: "Doqqan",
                              name: "IN GAME",
                              title: "Playing Counter Strike 2",
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("OFFLINE FRIENDS", style: TextStyle(color: Colors.red, fontFamily: "BebasNeue", fontSize: 40),),
                            ),
                            Tables(
                              date: "Creedz",
                              name: "LAST ONLINE TIME",
                              title: "2 Hours ago",
                            ),
                            Tables(
                              date: "!Gökay",
                              name: "LAST ONLINE TIME",
                              title: "8 Hours ago",
                            ),
                            Tables(
                              date: "BuraKamat",
                              name: "LAST ONLINE TIME",
                              title: "5 Hours ago",
                            ),
                          ],
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
