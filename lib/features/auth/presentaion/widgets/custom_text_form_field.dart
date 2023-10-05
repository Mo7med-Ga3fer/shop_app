import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.controller, this.isSecret = false});
  final TextEditingController controller;
  final bool isSecret;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'This field can not be empty';
        } else {
          return null;
        }
      },
      obscureText: isSecret,
      cursorColor: kPrimaryColor,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff00C569),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff00C569),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff00C569),
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
