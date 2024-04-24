import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  var prefs;

  Future initialize() async {
    // Obtain shared preferences.
    this.prefs = await SharedPreferences.getInstance();
  }

  void storeData(String key, String value) async {
    // Save an String value to 'action' key.
    // await prefs.setString('action', 'Start');
    await this.prefs.setString(key, value);
  }

  // String? getData(String key) {
  //   // Try reading data from the 'action' key. If it doesn't exist, returns null.
  //   // final String? action = prefs.getString('action');
  //   final String? value = this.prefs.getString(key);
  //   return value;
  // }
}

Future<String?> getData(String key) async {
  // Obtain shared preferences.
  final prefs = await SharedPreferences.getInstance();

  // Try reading data from the 'action' key. If it doesn't exist, returns null.
  // final String? action = prefs.getString('action');
  final String? value = prefs.getString(key);
  return value == null ? '' : value;
}

Future<Map<String, String>> getDataMap(List<String> keys) async {
  // Obtain shared preferences.
  final prefs = await SharedPreferences.getInstance();

  Map<String, String> data = {};

  //traverse through each element of list
  for (var i = 0; i < keys.length; i++) {
    // print(keys[i]);

    // Try reading data from the 'action' key. If it doesn't exist, returns null.
    // final String? action = prefs.getString('action');
    final String? value = prefs.getString(keys[i]);
    data[keys[i]] = value == null ? '' : value;
  }
  return data;
}

Future<bool> removeData(String key) async {
  // Obtain shared preferences.
  final prefs = await SharedPreferences.getInstance();

  // Remove data for the 'counter' key.
  // final success = await prefs.remove('counter');
  final success = await prefs.remove(key);
  return success;
}

Future<bool> clearAll() async {
  final prefs = await SharedPreferences.getInstance();

  final success = await prefs.clear();
  return success;
}
