import 'dart:convert';

import 'package:cashir/modules/auth/models/auth_status.model.dart';
import 'package:cashir/modules/auth/models/login.request.dart';
import 'package:cashir/modules/auth/models/register.request.dart';
import 'package:cashir/shared/services/local_storage.service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final String _authStatusKey = 'auth_status';

  final Rx<AuthStatus> authStatus = const AuthStatus(isLoggedIn: false).obs;

  Future<AuthStatus> login({required LoginRequest body}) async {
    authStatus.value = const AuthStatus(isLoggedIn: true, token: 'dommy token');

    return authStatus.value;
  }

  Future<void> register({required RegisterRequest body}) async {
    authStatus.value = const AuthStatus(isLoggedIn: true, token: 'dommy token');
  }

  Future<void> logout() async {
    authStatus.value = const AuthStatus(isLoggedIn: false, token: null);
  }

  @override
  void onInit() {
    super.onInit();

    _getAuthStatusFromLocalStorage();
  }

  Future<void> _getAuthStatusFromLocalStorage() async {
    final authStatusLocal =
        await Get.find<LocalStorageService>().read<String?>(_authStatusKey);

    if (authStatusLocal == null) return;

    authStatus.value = AuthStatus.fromJson(jsonDecode(authStatusLocal));
  }
}
