import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox); // 👈 فتح البوكس صح
  Hive.registerAdapter(NoteModelAdapter()); //! بعرف هايف ااني هخزن فيها note model
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider( //! Step number 4
      providers: [
        BlocProvider(create: (context)=> AddNoteCubit())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: kPrimaryColor, fontFamily: 'Poppins'),
          home: const NotesView()),
    );
  }
}
