import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 40,
            ),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                CupertinoIcons.back,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact me',
                  style: GoogleFonts.dmMono(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'You can reach me on the following platforms:',
                  style: GoogleFonts.dmMono(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Slack: @Oluwatosin',
                  style: GoogleFonts.dmMono(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: launchURL,
                  child: Text(
                    'Github: @fiki2002',
                    style: GoogleFonts.dmMono(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: launchURL1,
                  child: Text(
                    'Twitter: @tosinSpace',
                    style: GoogleFonts.dmMono(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: launchURL2,
                  child: Text(
                    'LinkedIn: Adepitan Oluwatosin',
                    style: GoogleFonts.dmMono(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: launchURL3,
                  child: Text(
                    'Mail me: You\'re always welcome',
                    style: GoogleFonts.dmMono(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> launchURL() async {
    final Uri url = Uri.parse('https://github.com/fiki2002');
    if (!await launchUrl(url)) {
      throw 'Could not lauch $url';
    }
  }

  Future<void> launchURL1() async {
    final Uri url = Uri.parse('https://twitter.com/tosinSpace');
    if (!await launchUrl(url)) {
      throw 'Could not lauch $url';
    }
  }

  Future<void> launchURL2() async {
    final Uri url =
        Uri.parse('https://www.linkedin.com/in/adepitan-oluwatosin-33b2a7213');
    if (!await launchUrl(url)) {
      throw 'Could not lauch $url';
    }
  }

  Future<void> launchURL3() async {
    final Uri url = Uri.parse(
        'mailto:adepitanoluwatosin202@gmail.com?subject=News&body=New%20plugin');
    if (!await launchUrl(url)) {
      throw 'Could not lauch $url';
    }
  }
}
