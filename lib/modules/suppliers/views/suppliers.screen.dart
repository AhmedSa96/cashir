import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/constants/colors.dart' as colors;

class SuppliersScreen extends StatelessWidget {
  const SuppliersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Supplier".tr,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/admin/suppliers/create');
        },
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Supplier ${++index}"),
            subtitle: Text("Supplier $index description"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.delete, color: colors.buttonDanger),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.edit, color: colors.buttonPrimary),
                  onPressed: () {
                    Get.toNamed('/admin/suppliers/$index/edit');
                  },
                ),
              ],
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
