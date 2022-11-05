import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_hng/views/know_my_work.dart';

import '../about_me.dart';
import '../contact_me.dart';
import 'header.dart';

class Landscape extends StatelessWidget {
  const Landscape({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Header(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Can i help you?',
                      style: GoogleFonts.dmMono(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Let\'s work?',
                      style: GoogleFonts.dmMono(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                buildContainer(
                  title: 'Contact me',
                  context: context,
                  widget: const ContactMe(),
                  color: const Color(0xff830FC9).withOpacity(0.4),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildContainer(
                title: 'About me',
                context: context,
                widget: const AboutMe(),
                color: const Color(0xff2CB1C2).withOpacity(0.2),
              ),
              buildContainer(
                color: const Color(0xffF43C88).withOpacity(0.2),
                title: 'Know my work',
                context: context,
                widget: KnowMyWork(),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget buildContainer({
    required String title,
    required BuildContext context,
    required Widget widget,
    required Color color,
  }) {
    return Container(
      height: 44,
      width: 155,
      padding: const EdgeInsets.only(top: 13),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget),
          );
        },
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.dmMono(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
