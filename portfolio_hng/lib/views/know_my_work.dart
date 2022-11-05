import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_hng/views/components/my_work_container.dart';

import '../theme/app_images.dart';

class KnowMyWork extends StatelessWidget {
  KnowMyWork({super.key});
  final List<MyWorkContainer> _myWorkContainer = [
    MyWorkContainer(
      text: 'Foodie',
      note:
          'This is a food app made just for the love of food.\nIt is just a dummy app for ordering food, no business logic was implemented,\nIt consists of six(6) responsive screens',
      url1: AppImages.food1,
    ),
    MyWorkContainer(
      text: 'Netflix App',
      note:
          'This is a clone of the very popular Netflix app.\nHere, i managed state using the Provider solution\nIts just single screened but i used a lot of data!',
      url1: AppImages.netflix,
    ),
    MyWorkContainer(
      text: 'FACL',
      note:
          'This is a UI where i played with state management and notifying users of changes in their apps.\nThough, i managed state in this Ui..I made used of setState and also made use of a snackbar without the use of a package\nIts not really big but i just love it!',
      url1: AppImages.facl,
    ),
    MyWorkContainer(
      text: 'Pavilion Rewards',
      note:
          'This is a also a UI😅\nForgive me, I\'m just a beginner\nThis is easily one of my best UI project\nI made use of the slivers here and God i did love them!\n ',
      url1: AppImages.pavilion,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                top: 35.h,
              ),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  CupertinoIcons.back,
                ),
              ),
            ),
            SizedBox(
              height: 24.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Work',
                    style: GoogleFonts.dmMono(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  SizedBox(
                    height: h * 0.79,
                    child: ListView.separated(
                      itemBuilder: (_, index) {
                        return MyWorkContainer(
                          text: _myWorkContainer[index].text,
                          note: _myWorkContainer[index].note,
                          url1: _myWorkContainer[index].url1,
                        );
                      },
                      separatorBuilder: (__, _) => const SizedBox(height: 10),
                      itemCount: _myWorkContainer.length,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
