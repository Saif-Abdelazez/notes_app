import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: KSecondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
          child: Text(
        'Add',
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold
        ),
      )),
    );
  }
}