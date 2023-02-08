import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _createItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.secondary,
            alignment: Alignment.bottomRight,
            child: Text(
              "Let's Cook?",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          const SizedBox(height: 20),
          _createItem(Icons.restaurant, 'Meals'),
          _createItem(Icons.settings, 'Settings'),
        ],
      ),
    );
  }
}
