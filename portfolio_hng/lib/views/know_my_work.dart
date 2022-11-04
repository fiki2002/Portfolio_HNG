import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Work',
                  style: GoogleFonts.dmMono(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: h * 0.8,
                  child: ListView.separated(
                    shrinkWrap: true,
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
    );
  }
}
