import 'package:bloc/bloc.dart';
import 'package:flutter_module/bloc/repo/user_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(AuthState(role: AuthRole.unknown, status: LoginStatus.logout));

  final userRepo = UserRepository();

  syncAuth() {
    Future.delayed(
      Duration(seconds: 1),
      () => emit(AuthState(role: AuthRole.unknown, status: LoginStatus.logout)),
    );
  }

  login({
    required String email,
    required String password,
  }) {
    final userModel = userRepo.login(email: email, password: password);
    emit(AuthState(role: AuthRole.customer, status: LoginStatus.login));
  }

  logout() {
    emit(AuthState(role: AuthRole.unknown, status: LoginStatus.logout));
  }
}
