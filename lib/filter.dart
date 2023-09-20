import 'package:cars/widget/brandname.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues values = const RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 244, 247),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 242, 244, 247),
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 0,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          "Filter",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.black,
                    ))),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(children: [
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                BrandSection(),
                BrandSection(),
                BrandSection(),
                BrandSection(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // card conatiner;
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            width: 600,
            height: 626,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Brands',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 145,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Card(
                            color: const Color.fromARGB(255, 242, 244, 247),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/teslalogo.png',
                                  width: 120, fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Card(
                            color: const Color.fromARGB(255, 242, 244, 247),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 16),
                              child: Image.asset('images/audilogo.png',
                                  width: 120, fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Card(
                            color: const Color.fromARGB(255, 242, 244, 247),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/mistubishilogo.png',
                                  width: 120, fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 40,
                    thickness: 0.2,
                    indent: 10,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Price Range',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // var selectedRange = RangeValue(0.2,0.8);
                  // RangeSlider(values: values, onChanged: (RangeValues newRange){
                  //   min: 0.0,
                  //   max: 2.0,
                  //   divisions:10,
                  //   labels:RangeLabels('${selectedRangestart}',)

                  // })
                  const SizedBox(
                    height: 20,
                  ),
                  RangeSlider(
                      values: values,
                      labels: labels,
                      onChanged: (newValue) {
                        values = newValue;
                        // print('${newValue.start}, ${newValue.end}');
                        setState(() {});
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    height: 40,
                    thickness: 0.2,
                    indent: 10,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Fuel Type',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 35,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(13, 3, 5, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 242, 244, 247),
                            ),
                            height: 50,
                            width: 60,
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "All",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 3, 5, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 242, 244, 247),
                            ),
                            height: 50,
                            width: 90,
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Electro",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 3, 5, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 242, 244, 247),
                            ),
                            height: 50,
                            width: 80,
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Diesel",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 3, 5, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 242, 244, 247),
                            ),
                            height: 50,
                            width: 60,
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Gas",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 3, 5, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 242, 244, 247),
                            ),
                            height: 50,
                            width: 75,
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Petrol",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 60,
                    thickness: 0.2,
                    indent: 10,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Car Seats',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(15, 3, 5, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 242, 244, 247),
                            ),
                            height: 50,
                            width: 90,
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2 seat",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(15, 3, 5, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 242, 244, 247),
                            ),
                            height: 50,
                            width: 90,
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4 seat",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(15, 3, 5, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 242, 244, 247),
                            ),
                            height: 50,
                            width: 90,
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "6 seat",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(15, 3, 5, 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 242, 244, 247),
                            ),
                            height: 50,
                            width: 90,
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "8 seat",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
