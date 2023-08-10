import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    _initApp();
  }

  void _initApp() {
    /// Navigate to login screen after 3 seconds
    /// TODO: Check if user is logged in
    /// TODO: Navigate to home screen if user is logged in
    /// TODO: Navigate to login screen if user is not logged in
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/login');
    });
  }
}
