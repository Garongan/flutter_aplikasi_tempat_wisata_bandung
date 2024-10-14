import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const <Widget>[
        NavigationDestination(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        NavigationDestination(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Transaction'),
        NavigationDestination(
          icon: Icon(Icons.bookmark_border),
          label: 'Bookmark',
        ),
        NavigationDestination(
          icon: Icon(Icons.perm_identity),
          label: 'Profile',
        ),
      ],
    );
  }
}
