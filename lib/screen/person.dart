import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ui/screen/personorder.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff9ee1e7), Color(0xffa4e6d1)])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/amaon.webp',
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.notifications),
                        Gap(10),
                        Icon(Icons.search)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
                width: double.infinity,
                child: ListTile(
                  trailing: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  title: Text(
                    'Hello,Rihan',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const Personorder()));
                    },
                    child: SizedBox(
                      width: 160,
                      height: 50,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                            child: Text('Your order',
                                textAlign: TextAlign.center)),
                      ),
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    width: 160,
                    height: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          'Buy Again',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: Text(
                          'Your Account',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          'Your Wish List',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(10),
              const ListTile(
                leading: Text(
                  'Your orders',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Text(
                  'See all',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              const Gap(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 250,
                      width: 180,
                      child: Card(
                        elevation: 5,
                        child: Image.asset('assets/mobile.webp'),
                      ),
                    ),
                    const Gap(15),
                    SizedBox(
                      height: 250,
                      width: 190,
                      child: Card(
                        elevation: 5,
                        child: Image.asset('assets/headphone.webp'),
                      ),
                    ),
                    const Gap(15),
                    SizedBox(
                      height: 250,
                      width: 180,
                      child: Card(
                        elevation: 5,
                        child: Image.asset('assets/laptop.webp'),
                      ),
                    )
                  ],
                ),
              ),
              const ListTile(
                leading: Text(
                  'Keep Shopping for',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'Edit  | Browsing History',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: const Color.fromARGB(255, 140, 138, 138),
                            ),
                          ),
                          height: 150,
                          width: 160,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset('assets/bodywash.jpg'),
                          ),
                        ),
                        const Column(
                          children: [
                            Text(
                              'BodyWash',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text('2 viewed',
                                style: TextStyle(color: Colors.black))
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 140, 138, 138),
                                      ),
                                    ),
                                    height: 150,
                                    width: 160,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Image.asset('assets/mobi.webp'),
                                    ),
                                  ),
                                  const Column(
                                    children: [
                                      Text('Mobile',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      Text('20 viewed',
                                          style: TextStyle(color: Colors.black))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 140, 138, 138),
                                      ),
                                    ),
                                    height: 150,
                                    width: 160,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child:
                                          Image.asset('assets/lapstand.webp'),
                                    ),
                                  ),
                                  const Column(
                                    children: [
                                      Text('Lap Desk',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      Text('17 viewed',
                                          style: TextStyle(color: Colors.black))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 140, 138, 138),
                                      ),
                                    ),
                                    height: 150,
                                    width: 160,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Image.asset('assets/shoe.webp'),
                                    ),
                                  ),
                                  const Column(
                                    children: [
                                      Text('Shoe',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      Text('100 viewed',
                                          style: TextStyle(color: Colors.black))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
