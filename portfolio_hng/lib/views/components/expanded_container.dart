import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/app_images.dart';
import '../about_me.dart';
import '../contact_me.dart';
import '../know_my_work.dart';
import 'container.dart';

class ExpandedContainer extends StatelessWidget {
  const ExpandedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          const BoxShadow(
            color: Color(0xff756E6E),
            blurRadius: 5,
            offset: Offset(5, 0),
          ),
          BoxShadow(
            color: Theme.of(context).backgroundColor,
            offset: const Offset(-5, 0),
          ),
          BoxShadow(
            color: Theme.of(context).backgroundColor,
            offset: const Offset(5, 0),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
              Container(
                height: 44,
                width: 155,
                padding: const EdgeInsets.only(top: 13),
                decoration: BoxDecoration(
                  color: const Color(0xff830FC9).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactMe(),
                      ),
                    );
                  },
                  child: Text(
                    'Contact me',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmMono(
                      color: const Color(0xffEAEAEA),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildContainer(
                callback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KnowMyWork(),
                    ),
                  );
                },
                title: 'Know my work',
                color: const Color(0xffF43C88).withOpacity(0.2),
                url: AppImages.icon1,
              ),
              BuildContainer(
                callback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutMe(),
                    ),
                  );
                },
                title: 'About me',
                color: const Color(0xff2CB1C2).withOpacity(0.2),
                url: AppImages.icon2,
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIcons(
                url: AppImages.twitter,
                context: context,
              ),
              buildIcons(
                url: AppImages.github,
                context: context,
              ),
              buildIcons(
                url: AppImages.linkedIn,
                context: context,
              ),
              buildIcons(
                url: AppImages.whatsapp,
                context: context,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildIcons({
    required String url,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        url,
        color: Colors.blueGrey,
      ),
    );
  }
}
