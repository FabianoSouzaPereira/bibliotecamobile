part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class Empty extends LoginState {}

class Loading extends LoginState {}

class Loaded extends LoginState {
  final LoginState login;

  Loaded({required this.login});

  @override
  List<Object> get props => [login];
}

class Error extends LoginState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}

class Unknown extends LoginState {}
