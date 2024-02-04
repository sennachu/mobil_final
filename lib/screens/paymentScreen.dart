import 'package:application_1/widgets/header.dart';
import 'package:flutter/material.dart';
import '../widgets/tables.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "ACCOUNT DETAILS",
          style: TextStyle(
              fontSize: 30, fontFamily: "BebasNeue", color: Colors.white),
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
            colors: [
              Colors.black,
              Colors.black87,
              Colors.black,
              Colors.black87
            ],
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Here you can see what you have purchased and gifted in your account.",
                    style: TextStyle(
                        fontFamily: "BebasNeue",
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ),
              Text(
                "view purchase history",
                style: TextStyle(
                    color: Colors.grey, fontFamily: "BebasNeue", fontSize: 25),
              ),
              Tables(
                date: "ZOGII",
                name: "GAME GIVEN AS A GIFT",
                title: "Crysis: 300₺",
              ),
              Tables(
                date: "ZOGII",
                name: "GAME GIVEN AS A GIFT",
                title: "Crysis: 300₺",
              ),
              Tables(
                date: "ZOGII",
                name: "GAME GIVEN AS A GIFT",
                title: "Crysis: 300₺",
              ),
              Tables(
                date: "ZOGII",
                name: "GAME GIVEN AS A GIFT",
                title: "Crysis: 300₺",
              ),
              Tables(
                date: "ZOGII",
                name: "GAME GIVEN AS A GIFT",
                title: "Crysis: 300₺",
              ),
              Tables(
                date: "ZOGII",
                name: "GAME GIVEN AS A GIFT",
                title: "Crysis: 300₺",
              ),
              Tables(
                date: "ZOGII",
                name: "GAME GIVEN AS A GIFT",
                title: "Crysis: 300₺",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
