import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 24, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    note.content,
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
                  note.date,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withValues(alpha: .5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
