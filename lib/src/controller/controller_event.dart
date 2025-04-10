import 'package:flutter_card_swiper/flutter_card_swiper.dart';

sealed class ControllerEvent {
  const ControllerEvent();
}

class ControllerSwipeEvent extends ControllerEvent {
  final CardSwiperDirection direction;
  const ControllerSwipeEvent(this.direction);
}

class ControllerUndoEvent extends ControllerEvent {
  const ControllerUndoEvent();
}

class ControllerMoveEvent extends ControllerEvent {
  final int index;
  final CardSwiperDirection direction;
  const ControllerMoveEvent(this.index,this.direction);
}
