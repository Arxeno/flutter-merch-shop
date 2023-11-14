import 'package:flutter/material.dart';
import 'package:inventory_merch_flutter/screens/inventorylist_form.dart';
import 'package:inventory_merch_flutter/screens/menu.dart';

class CustomDrawerButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final String route;

  const CustomDrawerButton(this.icon, this.text, this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      // Bagian redirection ke MyHomePage
      onTap: () {
        if (route == "/") {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ));
        } else if (route == "form/inventory/create") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => InventoryFormPage()));
        }
      },
    );
  }
}
