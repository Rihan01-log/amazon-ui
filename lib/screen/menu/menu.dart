import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ui/widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 225, 225),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Search Amazon.in',
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(
                Icons.search,
              ),
              suffixIcon: Icon(Icons.center_focus_strong),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff9ee1e7), Color(0xffa4e6d1)]),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const Gap(10),
                    Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(style: BorderStyle.solid),
                        ),
                        height: 150,
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Card(
                                  margin: const EdgeInsets.only(top: 13),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 90,
                                    width: 182,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/amazonpay menu.jpeg',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(4),
                                const Text(
                                  'Amazon pay',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Card(
                                  margin: const EdgeInsets.only(top: 13),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 91,
                                    width: 182,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/minitv.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(4),
                                const Text('Amazon miniTV',
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          menuCard('Prime', 'assets/prime.png'),
                          menuCard('Deals and\nSavings', 'assets/deal.jpg'),
                          menuCard('Mobiles &\nElectronic\nDevices',
                              'assets/mobilesand ell.jpg')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          menuCard('Fasion &\nBeauty', 'assets/fashion.png'),
                          menuCard('Groceries&\nSupplies',
                              'assets/Screenshot (16).png'),
                          menuCard(
                              'Health &\nPersonal Care', 'assets/health.png')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          menuCard(
                              'Home&\nAppliances', 'assets/homeappliance.png'),
                          menuCard(
                              'Music,Video\nand Gaming', 'assets/gaming.png'),
                          menuCard(
                              'FunZone &\nInspiration', 'assets/funzone.jpg')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  width: 412,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'Order',
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text('Buy again',
                                style: TextStyle(color: Colors.black))),
                      ),
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text('Account',
                                style: TextStyle(color: Colors.black))),
                      ),
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text('List',
                                style: TextStyle(color: Colors.black))),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
