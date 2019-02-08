import 'package:yuque/config/config.dart';
import 'package:yuque/config/config.prod.dart';
import 'package:yuque/boot/init.dart';

void main() async {
  final Config config = ProdConfig();
  await init(config);
}