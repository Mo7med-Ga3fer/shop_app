import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContinueWithButton extends StatelessWidget {
  const ContinueWithButton({super.key, required this.txt, required this.img});
  final String txt;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 8.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: const Color(0xffDDDDDD), width: 1),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              img,
              height: 24,
              width: 24,
              fit: BoxFit.fill,
            ),
            Text(
              txt,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
