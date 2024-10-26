import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Personorder extends StatefulWidget {
  const Personorder({super.key});

  @override
  State<Personorder> createState() => _PersonorderState();
}

class _PersonorderState extends State<Personorder> {
  // ignore: non_constant_identifier_names
  final List<String> Settings = [
    'Login & security',
    'Your Addresses',
    'Login with Amazon',
    'Content and devices',
    'Manage Your Profiles',
    'Default Purchase Settings',
    'Manage Prime membership',
    'Memberships & Subscriptions'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 156, 222, 227),
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
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
      body: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Order',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          const Gap(5),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(11.6),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 388,
                  height: 100,
                  child: const SizedBox(
                    height: 40,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your Order',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subscribe & Save',
                                style: TextStyle(color: Colors.black),
                              ),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Account Settings',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Login & security'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Your Address'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Login with Amazon'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Contact and Devices'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Manage your Profiles'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Default Purchase Settings'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Manage Your membership'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Membership & Subscription'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
