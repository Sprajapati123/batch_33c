import 'package:batch33c/repository/user_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  List<QueryDocumentSnapshot<UserModel>> _data = [];
  List<QueryDocumentSnapshot<UserModel>> get data => _data;

  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> getUsers() async {
    final res = await UserRepository().fetchUsers();
    _data = res;
    notifyListeners();
  }
}
