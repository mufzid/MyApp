import 'package:flutter/material.dart';

class Vehiclebutton extends StatelessWidget {
  const Vehiclebutton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: InkWell(
        child: Container(
            padding: const EdgeInsets.fromLTRB(10, 3, 5, 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            height: 40,
            width: 92,
            child: Row(
              children: [
                Image.asset(
                  'images/car.png',
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "car",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            )),
      ),
    );
  }
}
