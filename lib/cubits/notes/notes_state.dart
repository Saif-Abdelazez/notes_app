part of 'notes_cubit.dart';

sealed class NotesState extends Equatable {
  const NotesState();

  @override
  List<Object> get props => [];
}
//!Notes cubit step number 1

final class NotesInitial extends NotesState {}

final class NoteSuccess extends NotesState {}
