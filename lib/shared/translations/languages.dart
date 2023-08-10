import 'package:cashir/shared/translations/ar.dart';
import 'package:cashir/shared/translations/en.dart';
import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en': en, 'ar': ar};
}
