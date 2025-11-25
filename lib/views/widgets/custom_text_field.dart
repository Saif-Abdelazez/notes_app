import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint,  this.maxLines = 1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;

  final Function(String?)? onSaved ;
  final Function(String)? onChanged ;
  @override
  Widget build(BuildContext context) {
    return TextFormField( //*converted form TextField ==> TextFormField
    onChanged:onChanged ,
      onSaved: onSaved, //*when we pressed on the button 
      validator: (value){   //*check of the text 
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }else{
          return null ;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white.withValues(alpha: .7),
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kSecondaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:
            BorderSide(color: color ?? Colors.white.withValues(alpha: .7)));
  }
}
