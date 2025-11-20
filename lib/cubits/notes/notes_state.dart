part of 'notes_cubit.dart';

sealed class NotesState extends Equatable {
  const NotesState();

  @override
  List<Object> get props => [];
}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> notes; //* Store notes in list in case of success

  const NotesSuccess(this.notes);
}

final class NotesFailure extends NotesState {
  final String eeMessage;

  const NotesFailure(this.eeMessage);
}
