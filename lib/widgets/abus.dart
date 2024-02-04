import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Abus extends StatelessWidget {
  final String photo;
  final String name;
  final String title;
  const Abus({
    super.key,
    required this.photo,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 5,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          width: 205,
          height: 205,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 120),
            border: Border.all(
              color: Color.fromARGB(255, 243, 240, 240),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    photo,
                    width: 200,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.raleway(
                      color: const Color.fromARGB(255, 165, 32, 32),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // DUYURUYA BASINCA (SADECE MAİL GÖNDERİNİZ KISMINA TIKLARSA GÖNDERİR TÜM EKRANA TIKLAYINCA GÖNDERMESİNİ İSTERSEK 18. SATIRI INKWELL İLE SARMALAMALIYIZ) MAİL GÖNDERİYOR (MAİL GÖVDESİNDE DETAYLAR HAKKINDA... YAZIYOR VE OKUL MAİLİNE GÖNDERİYOR)
                      String? encodeQueryParameters(Map<String, String> params) {
                        return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
                      }

                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: '222016746@stu.istinye.edu.tr',
                        query: encodeQueryParameters(<String, String>{
                          'subject': "Detaylar Hakkında Bilgi Öğrenmek İstiyorum!",
                        }),
                      );

                      launchUrl(emailLaunchUri);
                    },
                    child: Text(
                      name,
                      style: GoogleFonts.raleway(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
