import 'package:flutter_module/bloc/provider/user_provider.dart';
import 'package:flutter_module/model/user_model.dart';

class UserRepository {
  final userProvider = UserProvider();

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    final userModel =
        await userProvider.login(email: email, password: password);
    return userModel;
  }
}
