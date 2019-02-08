import 'package:yuque/config/config.dart';

class LocalConfig extends Config {
  final String appName = "语雀 (Local)";
  final EnvType env = EnvType.LOCAL;
  final String dbName = 'yuque-local.db';
}