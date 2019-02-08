import 'package:yuque/config/config.dart';
import 'package:yuque/config/config.local.dart';
import 'package:yuque/boot/init.dart';

void main() async {
  final Config config = LocalConfig();
  await init(config);
}