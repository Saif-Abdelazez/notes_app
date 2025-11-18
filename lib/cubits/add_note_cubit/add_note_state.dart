part of 'add_note_cubit.dart';

abstract class AddNoteState extends Equatable {
  const AddNoteState();

  @override
  List<Object> get props => [];
}
//! step number 1
class AddNoteInitial extends AddNoteState {}
class AddNoteLoading extends AddNoteState {}
class AddNoteSuccess extends AddNoteState {}
class AddNoteFailure extends AddNoteState {
  final String errMessage ;

  AddNoteFailure(this.errMessage);
}
