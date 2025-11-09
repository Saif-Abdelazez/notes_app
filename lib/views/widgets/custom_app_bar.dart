import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SearchIcon()
      ],
    );
  }
}

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(16) ,
        color: Colors.white.withValues(alpha: .05)
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.search,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}