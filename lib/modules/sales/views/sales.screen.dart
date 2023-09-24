import 'package:flutter/material.dart';

import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminLayout(title: "Orders".tr, child: Container());
  }
}
