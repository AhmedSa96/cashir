import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const AdminLayout({
    required this.title,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: child,
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("LOGO"),
            ),
            ListTile(
              title: Text("Dashboard".tr),
              onTap: () {
                Navigator.of(context).pushNamed('/admin/dashboard');
              },
            ),
            ListTile(
              title: Text("Constatns".tr),
              onTap: () {
                Navigator.of(context).pushNamed('/admin/constatns');
              },
            ),
            ListTile(
              title: Text("Orders".tr),
              onTap: () {
                Navigator.of(context).pushNamed('/admin/orders');
              },
            ),
            ListTile(
              title: Text("Purcheses".tr),
              onTap: () {
                Navigator.of(context).pushNamed('/admin/purcheses');
              },
            ),
            ListTile(
              title: Text("emolpyees".tr),
              onTap: () {
                Navigator.of(context).pushNamed('/admin/employees');
              },
            ),
            ListTile(
              title: Text("Logout".tr),
              onTap: () {
                Navigator.of(context).pushNamed('/auth/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
