

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? _sharedPrefs;

  Future<bool?> logout() async {
    return await _sharedPrefs?.clear();
  }

  // ignore: strict_raw_type
  Future init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

// getter
  String get userName => _sharedPrefs!.getString('userName') ?? '';

//setter
  set userName(String value) {
    _sharedPrefs!.setString('userName', value);
  }

/*--------------- Check Is Login or Not --------------------*/
 bool isLoggedIn() {
    if (sharedPrefs.userName.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}

final sharedPrefs = SharedPrefs();
