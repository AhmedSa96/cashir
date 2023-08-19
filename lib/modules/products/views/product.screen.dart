import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/constants/colors.dart' as colors;

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Products".tr,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colors.primary,
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/admin/products/create');
        },
      ),
      child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Product $index"),
              subtitle: Text("Product $index description"),
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
                      Get.toNamed('/admin/products/$index/edit');
                    },
                  ),
                ],
              ),
            );
          },
          itemCount: 15),
    );
  }
}
