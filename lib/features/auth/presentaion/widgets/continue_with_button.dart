import 'package:flutter/material.dart';

class ContinueWithButton extends StatelessWidget {
  const ContinueWithButton({super.key, required this.txt,required this.img});
  final String txt;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: const Color(0xffDDDDDD), width: 1),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(img, height: 24, width: 24, fit: BoxFit.fill,),
            Text(txt, style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),)
          ],
        ),
      ),
    );
  }
}