import 'package:flutter/material.dart';

//Table yapabilmek için kullandığım kaynak: https://api.flutter.dev/flutter/widgets/Table-class.html

class Tables extends StatelessWidget {
  final String date;
  final String name;
  final String title;
  const Tables({
    super.key,
    required this.date,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(135, 255, 255, 255),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Expanded(
            child: Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(10.0),
                child: Table(
                  columnWidths: {
                    0: FractionColumnWidth(0.4),
                    1: FractionColumnWidth(0.6),
                  },
                  border: TableBorder.all(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(0, 255, 15, 15)),
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "Friend",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(date),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(title),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
