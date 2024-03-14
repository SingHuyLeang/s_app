import 'package:get_storage/get_storage.dart';

class AppLocalStorage {
  // constructor
  static final AppLocalStorage _instance = AppLocalStorage._internal();

  factory AppLocalStorage() {
    return _instance;
  }

  AppLocalStorage._internal();

  // storage
  final _storage = GetStorage();

  // Generic method for save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method for read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generic method for remove data
  Future<void> removeData<T>(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
