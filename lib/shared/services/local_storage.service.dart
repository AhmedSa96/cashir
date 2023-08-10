import 'package:get_storage/get_storage.dart';

class LocalStorageService {
  final GetStorage _box = GetStorage();

  Future<T?> read<T>(String key) async {
    return _box.read(key);
  }

  Future<void> write<T>(String key, T value) async {
    await _box.write(key, value);
  }

  Future<void> remove(String key) async {
    await _box.remove(key);
  }
}
