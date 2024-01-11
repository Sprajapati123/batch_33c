import 'package:batch33c/repository/user_repository.dart';
import 'package:flutter/material.dart';

import '../model/user_model.dart';

class UserViewModel extends ChangeNotifier {
  Future<void> save(UserModel data) async {
    try {
      await UserRepository().saveUsers(data);
    } on Exception catch (e) {
      print(e.toString());
      // TODO
    }
  }
}
