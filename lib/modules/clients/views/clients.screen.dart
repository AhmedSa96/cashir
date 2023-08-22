import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/constants/colors.dart' as colors;

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Clients".tr,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/admin/clients/create');
        },
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Client ${++index}"),
            subtitle: Text("Client $index description"),
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
                    Get.toNamed('/admin/clients/$index/edit');
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
