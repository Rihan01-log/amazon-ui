import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui/widget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final carousalImages = [
    'assets/corsor1.jpg',
    'assets/corsor2.jpg',
    'assets/corsor3.jpg',
    'assets/corsor4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 156, 222, 227),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 40,
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Search Amazon.in',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  suffixIcon: Icon(Icons.center_focus_strong)),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 50,
              color: const Color(0xFFc5efe5),
              child: const ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Deliver to Rihan - Manjeri'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  circleImage(
                      imagePath: 'assets/213rd0MhiCL._SX100_SY100_.jpg',
                      text: 'Festival'),
                  circleImage(
                      imagePath: 'assets/21b-FvkdZkL._SX100_SY100_.jpg',
                      text: 'Mobiles'),
                  circleImage(
                      imagePath: 'assets/21Yl8hAdPsL._SX50_SY50_FMpng_.png',
                      text: 'Fasion'),
                  circleImage(
                      imagePath: 'assets/21WgOPjLJML._SX100_SY100_.jpg',
                      text: 'Electronics'),
                  circleImage(
                      imagePath: 'assets/11kiICjGFlL._SX100_SY100_.jpg',
                      text: 'Deals'),
                  circleImage(
                      imagePath: 'assets/11++P4GISsL._SX100_SY100_.jpg',
                      text: 'New')
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: carousalImages.map(
                (imagePath) {
                  return SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                },
              ).toList(),
              options: CarouselOptions(
                  autoPlay: true,
                  height: 250,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  autoPlayAnimationDuration: const Duration(seconds: 2)),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    elevation: 5,
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              circleImage(
                                  imagePath: 'assets/pa.png',
                                  text: 'Amazon Pay'),
                              circleImage(
                                  imagePath: 'assets/sendmoney.png',
                                  text: 'Send Money')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              circleImage(
                                  imagePath: 'assets/qr.jpg',
                                  text: 'Scan any QR'),
                              circleImage(
                                  imagePath: 'assets/biil.jpg',
                                  text: 'Pay bill')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 248,
                            height: 248,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/deal.jpg',
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 248,
                        height: 248,
                        child: Card(
                          elevation: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/card2.jpg',
                              width: 248,
                              height: 248,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  'assets/sales.jpg',
                  fit: BoxFit.fill,
                )
              ],
            )
            
          ],
        
        ),
      ),
    );
  }
}
