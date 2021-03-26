part of 'authentication_bloc.dart';



// The AuthenticationEvent has two subclasses:


abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

/// AuthenticationUserChanged which notifies the bloc that the current user has changed


class AuthenticationUserChanged extends AuthenticationEvent {
  final User user;
  const AuthenticationUserChanged(this.user);

  @override
  List<Object> get props => [user];
}

/// AuthenticationLogoutRequested which notifies the bloc that the current user has requested to be logged out


class AuthenticationLogoutRequested extends AuthenticationEvent {}
