import 'package:flutter/material.dart';

//Datatable için kullandığım kaynak https://api.flutter.dev/flutter/material/DataTable-class.html
//https://stackoverflow.com/questions/60644375/flutter-datatable-multiline-wrapping-and-centering

class Ring extends StatelessWidget {
  const Ring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 120),
        border: Border.all(
          color: Color.fromARGB(0, 243, 240, 240),
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(columnSpacing: 10, horizontalMargin: 5, columns: [
            DataColumn(
              label: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "          Crysis 4       ",
                    style: TextStyle(fontFamily: "BebasNeue", fontSize: 30),
                  )
                ],
              ),
            ),
            DataColumn(
              label: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "anomaly agent",
                    style: TextStyle(fontFamily: "BebasNeue", fontSize: 30),
                  )
                ],
              ),
            ),
          ], rows: [
            DataRow(cells: [
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "EUROPE 09:00",
                      style: TextStyle(fontFamily: "BebasNeue", fontSize: 20),
                    )
                  ],
                ),
              ),
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "EUROPE 09:15",
                      style: TextStyle(fontFamily: "BebasNeue", fontSize: 20),
                    )
                  ],
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "AMERICA 10:15",
                      style: TextStyle(fontFamily: "BebasNeue", fontSize: 20),
                    )
                  ],
                ),
              ),
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "AMERICA 10:00",
                      style: TextStyle(fontFamily: "BebasNeue", fontSize: 20),
                    )
                  ],
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("ASIA 11:00",
                        style: TextStyle(fontFamily: "BebasNeue", fontSize: 20))
                  ],
                ),
              ),
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("ASIA 11:30",
                        style: TextStyle(fontFamily: "BebasNeue", fontSize: 20))
                  ],
                ),
              ),
            ]),
          ])),
    );
  }
}
