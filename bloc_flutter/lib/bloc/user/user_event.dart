part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User newUser;

  ActivateUser(this.newUser);
}

class ChangeEdadUserEvent extends UserEvent {
  final int newEdad;

  ChangeEdadUserEvent(this.newEdad);
}

class AddProfesionUserEvent extends UserEvent {
  final String newProfesion;

  AddProfesionUserEvent(this.newProfesion);
}

class DeleteUserEvent extends UserEvent {}
