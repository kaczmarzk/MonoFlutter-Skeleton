import 'package:hive_ce/hive.dart';

abstract final class DatabaseFactory {
  /// In situation where you want to add new box
  /// just add here a new const name with required [_namePrefix],
  /// and add new box factory in [registerBoxes] array below
  static const _namePrefix = 'crew_clush';

  static const baseBox = '$_namePrefix.base';

  static Future<void> registerBoxes() =>
      Future.wait<Box>([Hive.openBox(baseBox)]).then((v) => instance = v);

  static List<Box> instance = [];
}
