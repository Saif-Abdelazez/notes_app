import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 24, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 30),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'build your career with Saif Abdelaziz.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              trailing: Transform.translate(
                offset: Offset(0, -30),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      size: 24,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May 21,2021',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withValues(alpha: .5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
