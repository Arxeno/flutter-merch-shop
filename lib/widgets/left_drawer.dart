import 'package:flutter/material.dart';
import 'package:inventory_merch_flutter/screens/inventorylist_form.dart';
import 'package:inventory_merch_flutter/screens/menu.dart';
import 'package:inventory_merch_flutter/widgets/drawer_button.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Column(
              children: [
                Text(
                  'Shopping List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Catat seluruh keperluan belanjamu di sini!",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          CustomDrawerButton(Icons.home_outlined, "Halaman Utama", "/"),
          CustomDrawerButton(Icons.add_shopping_cart, "Tambah Inventory",
              "form/inventory/create"),
        ],
      ),
    );
  }
}
