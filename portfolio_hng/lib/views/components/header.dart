import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              fontSize: 24.sp,
            ),
          ),
          Text(
            'Mobile developer',
            style: GoogleFonts.dmMono(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
          ),
          Text(
            'Flutter',
            style: GoogleFonts.dmMono(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 20.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.r),
                child: Image.asset(
                  AppImages.profileBg,
                  width: 200.w,
                  height: 200.w,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
