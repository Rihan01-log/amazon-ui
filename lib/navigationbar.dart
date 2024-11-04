import 'package:flutter/material.dart';
import 'package:ui/screen/homescreen.dart';
import 'package:ui/screen/menu/menu.dart';
import 'package:ui/screen/person.dart';
import 'package:ui/screen/personorder.dart';
import 'package:ui/tabbar.dart';

class NavigationbarPage extends StatefulWidget {
  const NavigationbarPage({super.key});

  @override
  State<NavigationbarPage> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<NavigationbarPage> {
  int currenyIndex = 0;

  final List<Widget> amazonPages = [
    const Homescreen(),
    const Person(),
    const Tabbar(),
    const MenuPage(),
    const Personorder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: amazonPages[currenyIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currenyIndex,
        onTap: (index) {
          setState(() {
            currenyIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,  
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'person'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              label: 'menu')
        ],
      ),
    );
  }
}
