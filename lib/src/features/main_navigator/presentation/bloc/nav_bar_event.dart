abstract class BottomNavigationEvent {}

class BottomNavigationChanged extends BottomNavigationEvent {
  final int index;

  BottomNavigationChanged(this.index);
}
