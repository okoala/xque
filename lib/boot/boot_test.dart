import 'package:yuque/config/config.dart';
import 'package:yuque/config/config.test.dart';
import 'package:yuque/boot/init.dart';

void main() async {
  final Config config = TestConfig();
  await init(config);
}