import 'dart:convert';

import 'package:application_1/utils/user_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  init() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String username = prefs.getString('username') ?? "";
    String password = prefs.getString("password") ?? "";
    nameController.text = username;
    passwordController.text = password;
  }

  @override
  void initState() {
    init();

    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("LOG IN",  style: TextStyle(fontSize: 35, color: Colors.white, fontFamily: "BebasNeue")),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.4, 0.6, 0.9],
            colors: [Colors.black, Color.fromRGBO(255, 30, 30, 0.5), Color.fromRGBO(255, 30, 30, 0.6), Colors.black54],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 73, 72, 72).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "EMAIL",
                            style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 40),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: "Enter Your Email...",
                              hintStyle: GoogleFonts.nunitoSans(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 55, 52, 52).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "PASSWORD",
                            style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 40),
                          ),
                          SizedBox(height: 7),
                          TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText: "Enter Your Password...",
                              hintStyle: GoogleFonts.nunitoSans(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (nameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                          final url = Uri.parse('https://reqres.in/api/login');
                          final headers = {'Content-Type': 'application/json'};
                          final body = jsonEncode({'email': nameController.text, 'password': passwordController.text});

                          final response = await http.post(url, headers: headers, body: body);

                          if (response.statusCode == 200) {
                            print('Data Sending Success.');
                            Navigator.pushNamedAndRemoveUntil(context, "/home", (Route<dynamic> route) => false);
                          } else {
                            print('Hata: ${response.body}');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Böyle Bir Kullanıcı Bulunmamaktadır!'),
                              ),
                            );
                          }
                          SecureStorage().writeSecureData("username", nameController.text);
                          SecureStorage().writeSecureData("password", passwordController.text);
                          final SharedPreferences prefs = await SharedPreferences.getInstance();
                          prefs.setString("username", nameController.text);
                          prefs.setString("password", passwordController.text);
                        }
                      },
                      child: Text(
                        "START FUN!",
                        style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 30),
                      ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
