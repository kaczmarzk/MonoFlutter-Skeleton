import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:loggy/loggy.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pkg_common_api/src/database/src/database_factory.dart';

abstract interface class IDatabaseClient {
  T? getWithKey<T>({required String box, required String key});

  void putAtKey<T>({
    required String box,
    required String key,
    required T value,
  });

  void deleteAtKey({required String box, required String key});

  List<T> getAll<T>({required String box});
}

@lazySingleton
class DatabaseClient with UiLoggy implements IDatabaseClient {
  DatabaseClient();

  static Future<void> init() async {
    await getApplicationDocumentsDirectory().then((dir) => Hive.init(dir.path));
    await DatabaseFactory.registerBoxes();
  }

  @override
  T? getWithKey<T>({required String box, required String key}) {
    loggy.info('[GET] at $box');
    return _extractValidBox(box).get(key.toLowerCase()) as T?;
  }

  @override
  void putAtKey<T>({
    required String box,
    required String key,
    required T value,
  }) {
    loggy.info('[PUT] $value at $box');
    _extractValidBox(box).put(key.toLowerCase(), value);
  }

  @override
  List<T> getAll<T>({required String box}) {
    return _extractValidBox(box).toMap().values.cast<T>().toList();
  }

  @override
  void deleteAtKey({required String box, required String key}) {
    _extractValidBox(box).delete(key);
  }

  Box _extractValidBox(String name) {
    final boxes = DatabaseFactory.instance;
    return boxes.firstWhere((e) => name == e.name);
  }
}
