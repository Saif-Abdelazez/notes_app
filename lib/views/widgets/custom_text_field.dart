import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      onTap: () {},
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: TextStyle(
            color: Colors.white.withValues(alpha: .7),
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:
            BorderSide(color: color ?? Colors.white.withValues(alpha: .7)));
  }
}
