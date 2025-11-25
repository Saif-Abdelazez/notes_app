import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key, required this.icon, this.onPressed,
  });
  final void Function()? onPressed ;
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(16) ,
        color: Colors.white.withValues(alpha: .05)
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}