import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

const String _hiveCached = "hiveCached";

@module
abstract class HiveModule {
  @preResolve
  @singleton
  Future<HiveInterface> init() async {
    await Hive.initFlutter();
    await Hive.openBox<dynamic>(_hiveCached);
    return Hive;
  }
}
