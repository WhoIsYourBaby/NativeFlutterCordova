import 'package:flutter_module/model/user_model.dart';

class UserProvider {
  UserProvider();

  login({
    required String email,
    required String password,
  }) async {
    return Future.value(UserModel(email, email));
  }
}
