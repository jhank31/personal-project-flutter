import 'package:bloc/bloc.dart';
import 'package:bloc_flutter/models/user.dart';
import 'package:flutter/material.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>(
        (event, emit) => emit(UserSetState(newUser: event.newUser)));
    on<ChangeEdadUserEvent>((event, emit) {
      if (!state.existUser) return;

      emit(UserSetState(newUser: state.user!.copyWith(edad: event.newEdad)));
    });

    on<AddProfesionUserEvent>((event, emit) {
      if (!state.existUser) return;
      final profesions = [...state.user!.profesiones, event.newProfesion];
      emit(
          UserSetState(newUser: state.user!.copyWith(profesiones: profesions)));
    });

    on<DeleteUserEvent>((event, emit) => emit(const UserInitialState()));
  }
}
