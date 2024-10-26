import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BuyagainPagege extends StatefulWidget {
  const BuyagainPagege({super.key});

  @override
  State<BuyagainPagege> createState() => _BuyagainPagegeState();
}

class _BuyagainPagegeState extends State<BuyagainPagege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Buy Again',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(228, 255, 255, 255),
                        padding: const EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          'filter',
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(9),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Search all orders',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: const Icon(Icons.center_focus_strong),
                  ),
                ),
              ),
              const Gap(15),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Container(
                        height: 350,
                        width: 190,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/samsung.webp',
                              height: 200,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Samsung Galaxy  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Text(
                                  '-28%',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                                Gap(3),
                                Text('₹6000')
                              ],
                            ),
                            const Row(
                              children: [
                                Text('M.R.P'),
                                Text(
                                  '₹8000',
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Text('Get it by'),
                                Text(
                                  'Mon,April 24',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Row(
                              children: [Text('Delivered over ₹499 ')],
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow),
                                onPressed: () {},
                                child: const Text('Add to cart'))
                          ],
                        )),
                    const Gap(10),
                    Container(
                      height: 350,
                      width: 190,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/redmi13.webp',
                            height: 200,
                          ),
                          const Text(
                            'Redmi 13 note 13 pro(red.. ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Row(
                            children: [
                              Text(
                                '-28%',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Gap(3),
                              Text('₹10000')
                            ],
                          ),
                          const Row(
                            children: [
                              Text('M.R.P'),
                              Text(
                                '₹14000',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text('Get it by'),
                              Text(
                                'Wed,Feb 24',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Row(
                            children: [Text('Delivered over ₹499 ')],
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow),
                              onPressed: () {},
                              child: const Text('Add to cart'))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Gap(10),
              Row(children: [
                Container(
                    height: 350,
                    width: 190,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/iphonebuy.webp',
                          height: 200,
                        ),
                        const Row(
                          children: [
                            Text(
                              'iPhone 15(Black)  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '-28%',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(3),
                            Text('₹69000')
                          ],
                        ),
                        const Row(
                          children: [
                            Text('M.R.P'),
                            Text(
                              '₹79000',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text('Get it by'),
                            Text(
                              'Mon,March 25',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Row(
                          children: [Text('Delivered over ₹499 ')],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow),
                            onPressed: () {},
                            child: const Text('Add to cart'))
                      ],
                    )),
                const Gap(10),
                Container(
                  height: 350,
                  width: 190,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/samsungs23.webp',
                        height: 200,
                      ),
                      const Text(
                        'Samsung s23 ultra 5G(128) ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        children: [
                          Text(
                            '-28%',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          Gap(3),
                          Text('₹110000')
                        ],
                      ),
                      const Row(
                        children: [
                          Text('M.R.P'),
                          Text(
                            '₹150000',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text('Get it by'),
                          Text(
                            'Mon,May 24',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Row(
                        children: [Text('Delivered over ₹499 ')],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow),
                          onPressed: () {},
                          child: const Text('Add to cart'))
                    ],
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
