import 'package:application_1/utils/user_secure_storage.dart';
import 'package:application_1/widgets/menuItem.dart';
import 'package:application_1/widgets/profileItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  String? username;
  String? password;
  init() async {
    await SecureStorage().readSecureData("username");
    await SecureStorage().readSecureData("password");
    //SHARED PREF ÖZELLİĞİNİ AKTİF ETTİK İNİT STATEDE LOCALE KAYDETTİGİMİZ USERNAME VE PASSWORD BİLGİLERİNİ ÇAGIRIYORUZ USERNAME VE PASSWORDA SETLİYORUZ
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    username = prefs.getString('username');
    password = prefs.getString("password");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
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
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              ProfileItem(
                avatar: "assets/images/oyun1.jpg",
                name: "SENNACHU",
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItem(
                      title: "20 LVL",
                      icon:
                          Icon(Icons.keyboard_arrow_right, color: Colors.white),
                      onTap: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItem(
                      title: "REGISTERED DAY: 14.09.2015",
                      icon: Icon(Icons.numbers, color: Colors.white),
                      onTap: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItem(
                      title: "YOUR MAIL: $username",
                      icon: Icon(Icons.mail, color: Colors.white),
                      onTap: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItem(
                      title: "YOUR PASSWORD: $password",
                      icon: Icon(Icons.key, color: Colors.white),
                      onTap: () {}),
                ],
              ),
              
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    "GO BACK",
                    style: GoogleFonts.raleway(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
