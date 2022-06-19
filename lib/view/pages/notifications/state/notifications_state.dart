abstract class NotifState {
  NotifState();
}

class NotifInitial extends NotifState {
  NotifInitial();
}

class NotifLoading extends NotifState {
  NotifLoading();
}

class NotifComplete extends NotifState {
  NotifComplete();
}

class NotifError extends NotifState {
  String message;
  NotifError(this.message);
}
