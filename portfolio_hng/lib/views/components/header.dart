import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/app_images.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        left: 24,
        right: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Adepitan Oluwatosin',
            style: GoogleFonts.dmMono(
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
          Text(
            'Mobile developer',
            style: GoogleFonts.dmMono(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          Text(
            'Flutter',
            style: GoogleFonts.dmMono(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  AppImages.profileBg,
                  width: 250,
                  height: 250,
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}
