import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Class extends StatelessWidget {
  final String date;
  final String title;
  final String image;
  const Class({
    super.key,
    required this.date,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 120),
          border: Border.all(
            color: Color.fromARGB(255, 243, 240, 240),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Column(
              children: [
                Image.asset(image),
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10), child: Icon(Icons.gamepad)),
                    Text(date,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 10, right: 15),
                  child: Row(
                    children: [
                      Expanded(
                          child: RichText(
                              text: TextSpan(
                        children: [
                          TextSpan(
                            text: title,
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ),
                        ],
                      )))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
