import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWorkContainer extends StatelessWidget {
  const MyWorkContainer({
    super.key,
    required this.text,
    required this.note,
    required this.url1,
  });
  final String text;
  final String note;
  final String url1;
  @override
  Widget build(BuildContext context) {
    return Container(
     
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffDAD9D9),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.dmMono(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            note,
            textAlign: TextAlign.start,
            textDirection: TextDirection.ltr,
            style: GoogleFonts.dmMono(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                url1,
                height: 250,
                width: 250,
              ),
            ],
          )
        ],
      ),
    );
  }
}
