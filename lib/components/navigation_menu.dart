import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/screen/bookmark_screen.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/screen/home_screen.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/screen/profile_screen.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/screen/transaction_screen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const HomeScreen(),
        const TransactionScreen(),
        const BookmarkScreen(),
        const ProfileScreen(),
      ][currentPageIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(29, 170, 171, 1),
                width: 0.5,
              ),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(29, 170, 171, 1),
                offset: Offset(0, 1.5),
                blurRadius: 4,
              )
            ]),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          backgroundColor: Colors.white,
          indicatorColor: Colors.white,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                size: 30,
                color: Color.fromRGBO(29, 170, 171, 1),
              ),
              icon: Icon(
                Icons.home_outlined,
                size: 30,
                color: Color.fromRGBO(29, 170, 171, 1),
              ),
              label: 'Home',
            ),
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.account_balance_wallet,
                  size: 30,
                  color: Color.fromRGBO(29, 170, 171, 1),
                ),
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 30,
                  color: Color.fromRGBO(29, 170, 171, 1),
                ),
                label: 'Transaction'),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.bookmark,
                size: 30,
                color: Color.fromRGBO(29, 170, 171, 1),
              ),
              icon: Icon(
                Icons.bookmark_border,
                size: 30,
                color: Color.fromRGBO(29, 170, 171, 1),
              ),
              label: 'Bookmark',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.person,
                size: 30,
                color: Color.fromRGBO(29, 170, 171, 1),
              ),
              icon: Icon(
                Icons.person_outline,
                size: 30,
                color: Color.fromRGBO(29, 170, 171, 1),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
