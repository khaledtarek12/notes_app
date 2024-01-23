import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_notes_event.dart';
part 'add_notes_state.dart';

class AddNotesBloc extends Bloc<AddNotesEvent, AddNotesState> {
  AddNotesBloc() : super(AddNotesInitial()) {
    on<AddNotesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
