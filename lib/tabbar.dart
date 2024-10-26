import 'package:flutter/material.dart';
import 'package:ui/screen/buyagain.dart';
import 'package:ui/screen/cart.dart';
import 'package:ui/screen/keepshoping.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff9ee1e7), Color(0xffa4e6d1)])),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Card(
                      elevation: 5,
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54, width: 0.5)),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          suffixIcon: const Icon(Icons.center_focus_strong),
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search Amazon.in',
                          contentPadding: const EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            bottom: const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Cart',
                  ),
                  Tab(
                    text: 'Buy again',
                  ),
                  Tab(
                    text: 'Keep Shoping',
                  )
                ]),
          ),
        ),
        body: const TabBarView(
            children: [CartPage(), BuyagainPagege(), Keepshoping()]),
      ),
    );
  }
}
