import 'package:application_1/widgets/class.dart';
import 'package:flutter/material.dart';
import '../widgets/header.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text("GAME LIBRARY", style: TextStyle(color: Colors.white, fontFamily: "BebasNeue", fontSize: 30),),
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
          colors: [
            Colors.black,
            Colors.black87,
            Colors.black,
            Colors.black87
          ],
        )),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,bottom: 5, top: 10),
                        child: Row(
                          children: [
                            Text("Crysis 1",style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 35),),
                            SizedBox(width: 10,),
                            Text("6 HOURS PLAYED", style: TextStyle(fontFamily: "BebasNeue", color: Colors.grey, fontSize: 25),)
                          ],
                        ),
                      ),
                      Class(
                          image: "assets/images/oyun1.jpg",
                          date: "Crysis 1",
                          title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,bottom: 5, top: 10),
                        child: Row(
                          children: [
                            Text("Among us",style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 35),),
                            SizedBox(width: 10,),
                            Text("22 HOURS PLAYED", style: TextStyle(fontFamily: "BebasNeue", color: Colors.grey, fontSize: 25),)
                          ],
                        ),
                      ),
                      Class(
                          image: "assets/images/oyun2.jpg",
                          date: "Among Us",
                          title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,bottom: 5, top: 10),
                        child: Row(
                          children: [
                            Text("Counter-Strike 2",style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 35),),
                            SizedBox(width: 10,),
                            Text("568 HOURS PLAYED", style: TextStyle(fontFamily: "BebasNeue", color: Colors.grey, fontSize: 25),)
                          ],
                        ),
                      ),
                      Class(
                          image: "assets/images/oyun3.jpg",
                          date: "Counter Strike 2",
                          title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,bottom: 5, top: 10),
                        child: Row(
                          children: [
                            Text("doom eternal",style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 35),),
                            SizedBox(width: 10,),
                            Text("9.8 HOURS PLAYED", style: TextStyle(fontFamily: "BebasNeue", color: Colors.grey, fontSize: 25),)
                          ],
                        ),
                      ),
                      Class(
                          image: "assets/images/oyun4.jpg",
                          date: "Doom Eternal",
                          title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,bottom: 5, top: 10),
                        child: Row(
                          children: [
                            Text("hades",style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 35),),
                            SizedBox(width: 10,),
                            Text("20 HOURS PLAYED", style: TextStyle(fontFamily: "BebasNeue", color: Colors.grey, fontSize: 25),)
                          ],
                        ),
                      ),
                      Class(
                          image: "assets/images/oyun5.jpg",
                          date: "Hades",
                          title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,bottom: 10, top: 10),
                        child: Row(
                          children: [
                            Text("Half-Life 2",style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 35),),
                            SizedBox(width: 10,),
                            Text("10 HOURS PLAYED", style: TextStyle(fontFamily: "BebasNeue", color: Colors.grey, fontSize: 25),)
                          ],
                        ),
                      ),
                      Class(
                          image: "assets/images/oyun6.jpg",
                          date: "Half-Life 2",
                          title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                      SizedBox(height: 20,)
                    ],
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

Card card() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          "assets/image/car1.jpg",
          height: 160,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 15, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "2021 Porsche 911 Turbo S",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey[800],
                ),
              ),
              Container(height: 10),
              Text(
                "Our engineers are gamers who talk about the most perfect sports cars ever produced and their production. It offers excellent performance, is comfortable and is completely suitable for daily use. 911 Turbo models continue to implement this philosophy",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
              Row(
                children: <Widget>[
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.transparent,
                    ),
                    child: const Text(
                      "100.000",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(height: 5),
      ],
    ),
  );
}
