import 'package:flutter/material.dart';
import 'package:inventory_merch_flutter/screens/inventorylist_form.dart';

class InventoryItem {
  final String name;
  final IconData icon;
  final Color backgroundColor;
  final String? route;

  InventoryItem(this.name, this.icon, this.backgroundColor,
      [this.route = null]);
}

class InventoryCard extends StatelessWidget {
  final InventoryItem item;

  const InventoryCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.backgroundColor,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          if (item.route != null) {
            if (item.route == 'form/inventory/create') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InventoryFormPage()));
            }
          } else {
            // Memunculkan SnackBar ketika diklik
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                  content: Text("Kamu telah menekan tombol ${item.name}!")));
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.black54,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
