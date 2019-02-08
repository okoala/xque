import 'package:yuque/config/config.dart';

class TestConfig extends Config {
  final String appName = "语雀 (Test)";
  final EnvType env = EnvType.TEST;
  final String dbName = 'yuque-test.db';
}