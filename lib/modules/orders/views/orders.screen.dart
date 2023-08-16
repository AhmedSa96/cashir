import 'package:flutter/material.dart';

import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminLayout(title: "Orders".tr, child: Container());
  }
}
