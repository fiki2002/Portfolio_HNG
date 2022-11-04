import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildContainer extends StatelessWidget {
  const BuildContainer({
    super.key,
    required this.title,
    required this.color,
    required this.url,
    required this.callback,
  });
  final String title;
  final String url;
  final Color color;
  final Function() callback;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 147,
        width: 156,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(url),
            const SizedBox(
              height: 40,
            ),
            Text(
              title,
              style: GoogleFonts.dmMono(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
