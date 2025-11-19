import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // add it when to submit the text from the user
      onTap: onTap, //aafter add it we go to the form and use it
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: isLoading
                ? SizedBox(
                  height: 25,
                  width: 25,
                  child: const CircularProgressIndicator(
                      color: Colors.black,
                    ),
                )
                : const Text(
                    'Add',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
