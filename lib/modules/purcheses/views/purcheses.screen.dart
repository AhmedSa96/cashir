import 'package:flutter/material.dart';

import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';

class PurchesesScreen extends StatelessWidget {
  const PurchesesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminLayout(title: "Purcheses".tr, child: Container());
  }
}
