part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class Empty extends HomeState {}

class Loading extends HomeState {}

class Loaded extends HomeState {
  final HomeState login;

  Loaded({required this.login});

  @override
  List<Object> get props => [login];
}

class Error extends HomeState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}

class Unknown extends HomeState {}
