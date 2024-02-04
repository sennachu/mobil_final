import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Anns extends StatelessWidget {
  final String number;
  final String date;
  final String title;
  const Anns({
    super.key,
    required this.date,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width:  MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 120),
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          number,
                          style: TextStyle(
                            fontSize: 45,
                            color: Color.fromRGBO(255, 30, 30, 1),
                            fontFamily: "BebasNeue"
                          ),
                        )),
                    Text(date,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 25,
                          fontFamily: "BebasNeue"
                        )),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15, right: 15),
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
                                  color: Colors.black87, fontFamily: "BebasNeue"),
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
