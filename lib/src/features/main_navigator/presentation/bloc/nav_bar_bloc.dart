import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times_app/src/features/main_navigator/presentation/bloc/nav_bar_event.dart';
import 'package:ny_times_app/src/features/main_navigator/presentation/bloc/nav_bar_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationState(currentIndex: 1)) {
    on<BottomNavigationChanged>((event, emit) {
      emit(BottomNavigationState(currentIndex: event.index));
    });
  }
}
