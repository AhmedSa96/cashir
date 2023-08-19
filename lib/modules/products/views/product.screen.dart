import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Products".tr,
      floatingActionButton: FloatingActionButton(
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
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  Get.toNamed('/admin/products/$index/edit');
                },
              ),
            );
          },
          itemCount: 15),
    );
  }
}
