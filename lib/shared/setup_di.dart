import 'package:cashir/modules/splash/controller/splash.controller.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:cashir/shared/services/local_storage.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:get/instance_manager.dart';

import '../modules/auth/controller/auth.controller.dart';

void setupDI() {
  // app services
  Get.put(LocalStorageService());
  Get.put(HttpService());
  Get.put(ToastrService());

  // app controllers
  Get.put(AuthController());
  Get.put(SplashController());
}
