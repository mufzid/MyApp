import 'package:cars/filter.dart';
import 'package:cars/widget/carcard.dart';
import 'package:cars/widget/custonbtn.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 244, 247),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 242, 244, 247),
          title: const Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Car Rent",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              SizedBox(
                width: 140,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(children: [
              TextField(
                  style: const TextStyle(fontSize: 15.0),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search anything.....",
                    suffixIcon: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilterPage()));
                      },
                      icon: const Icon(
                        Icons.tune,
                        color: Colors.green,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.red, width: 30),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Vehiclebutton(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 3, 5, 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        height: 40,
                        width: 110,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7.0),
                              child: Image.asset(
                                'images/scooter.png',
                                width: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Motor",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 3, 5, 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        height: 40,
                        width: 110,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/bicycle.png',
                              width: 30,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Cycle",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Popular Car",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "All Car",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.blue,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: GridView(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.0,
                    mainAxisExtent: 170,
                  ),
                  children: const [
                    CarBox(),
                    CarBox(),
                    CarBox(),
                    CarBox(),
                    CarBox(),
                    CarBox(),
                    CarBox(),
                    CarBox(),
                    CarBox(),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
