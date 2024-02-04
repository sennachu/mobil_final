import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 20, bottom: 0),
              child: Image.asset(
                "assets/images/logo3.png",
                width: 300,
              ),
            ),
            Text("WELCOME GAMER",
                style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "BebasNeue")),
            Text("THIS IS YOUR NEW HOME",
                style: TextStyle(
                    fontSize: 45,
                    color: Color.fromRGBO(255, 30, 30, 1),
                    fontFamily: "BebasNeue")),
            Text("LET'S LOG IN AND START THE FUN!",
                style: TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "BebasNeue")),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 30, 30, 1)),
                  child: Row(
                    children: [
                      Text(
                        "LOG IN",
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(fontFamily: "BebasNeue"),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
