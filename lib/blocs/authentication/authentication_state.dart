part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState extends Equatable {}

final class Uninitialized extends AuthenticationState {
  @override
  List<Object> get props => [];
}

final class Unauthenticated extends AuthenticationState {
  @override
  List<Object> get props => [];
}

final class Authenticated extends AuthenticationState {
  final User user;

  Authenticated(this.user);

  @override
  List<Object> get props => [user];
}

final class AuthenticationLoading extends AuthenticationState {
  @override
  List<Object> get props => [];
}

final class AuthenticationError extends AuthenticationState {
  final String message;

  AuthenticationError(this.message);

  @override
  List<Object> get props => [message];
}
