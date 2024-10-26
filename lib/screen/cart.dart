import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isChecked = false;
  var add = 0;
  var itemIncrease = 0;

  void inValue() {
    setState(() {
      itemIncrease++;
    });
  }

  void digValue() {
    setState(() {
      itemIncrease--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 156, 222, 227),
            height: 50,
            child: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on),
                  Text('Deliver to Rihan-Manjeri-673641')
                ],
              ),
            ),
          ),
          const Gap(5),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'SubTotal',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Gap(5),
                Text(
                  '₹1,44,998',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Text('EMI available'),
                Gap(2),
                Text(
                  'Details',
                  style: TextStyle(color: Colors.blueAccent),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                    'Your order is eligible for FREE Delivery.\nSelect this option at checkout.'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: const Size(double.infinity, 40)),
              onPressed: () {},
              child: const Text(
                'Proceed to Buy (2 items)',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
              const Text('Send a gift.Include custom message')
            ],
          ),
          const Gap(4),
          const Divider(),
          const Gap(10),
          Row(
            children: [
              SizedBox(
                width: 160,
                height: 160,
                child: Image.asset('assets/iphone.webp'),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Apple iPhone 14 pro(128)\nDeep Purple'),
                  Gap(4),
                  Text(
                    '₹1,44,998',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Eligible for FREE Shipping'),
                  Gap(4),
                  Text('Colour:Deep Purple'),
                  Gap(4),
                  Text(
                    '₹20 Cashback applied. Buy with \nother items in cart',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ],
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black38)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            digValue();
                          },
                          icon: const Icon(Icons.delete)),
                      Text(itemIncrease.toString()),
                      IconButton(
                          onPressed: () {
                            inValue();
                          },
                          icon: const Icon(Icons.add)),
                    ],
                  ),
                ),
                const Gap(7),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      'Delete',
                      style: TextStyle(color: Colors.black),
                    )),
                const Gap(7),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      'Save me later',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
          const Gap(4),
          const Divider(),
          Row(
            children: [
              SizedBox(
                width: 160,
                height: 160,
                child: Image.asset('assets/iphone.webp'),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Apple iPhone 14 pro(256)\nDeep Purple'),
                  Gap(4),
                  Text(
                    '₹1,68,998',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Eligible for FREE Shipping'),
                  Gap(4),
                  Text('Colour:Deep Purple'),
                  Gap(4),
                  Text(
                    '₹20 Cashback applied. Buy with \nother items in cart',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ],
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black38)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            digValue();
                          },
                          icon: const Icon(Icons.delete)),
                      Text(itemIncrease.toString()),
                      IconButton(
                          onPressed: () {
                            inValue();
                          },
                          icon: const Icon(Icons.add)),
                    ],
                  ),
                ),
                const Gap(7),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      'Delete',
                      style: TextStyle(color: Colors.black),
                    )),
                const Gap(7),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      'Save me later',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
