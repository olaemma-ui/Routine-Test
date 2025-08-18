import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class NavigationEvent {
  final int index;
  const NavigationEvent(this.index);
}

class NavigateTo extends NavigationEvent {
  const NavigateTo(int index) : super(index);
}

// States
class NavigationState {
  final int selectedIndex;
  const NavigationState(this.selectedIndex);
}

// Bloc
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState(0)) {
    on<NavigateTo>((event, emit) {
      emit(NavigationState(event.index));
    });
  }
}
