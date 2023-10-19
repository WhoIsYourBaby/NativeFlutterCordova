part of 'auth_cubit.dart';

class AuthState {
  AuthRole role = AuthRole.unknown;
  LoginStatus status = LoginStatus.logout;

  AuthState({
    required this.role,
    required this.status,
  });
}

enum AuthRole { unknown, customer, businessman }

enum LoginStatus {
  unknown,
  login,
  logout,
}
