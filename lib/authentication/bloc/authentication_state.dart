part of 'authentication_bloc.dart';

enum AuthenticationStatus { authenticated, unaunthenticated, unknown }

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final User user;

  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user = User.empty,
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  const AuthenticationState.unaunthenticated()
      : this._(status: AuthenticationStatus.unaunthenticated);

  @override
  List<Object> get props => [status, user];
}
