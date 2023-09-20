import 'package:flutter/material.dart';

class CarBox extends StatelessWidget {
  const CarBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/bmw.png',
            ),
            const Text(
              '2023 BMW M4',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 17,
                ),
                Text('United State')
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Icon(
                  Icons.airline_seat_recline_extra,
                  color: Colors.blue,
                  size: 17,
                ),
                Text('4 Seats', style: TextStyle(fontSize: 13)),
                Spacer(),
                Icon(
                  Icons.monetization_on,
                  color: Colors.blue,
                  size: 14,
                ),
                Text(
                  "400/ DAY",
                  style: TextStyle(fontSize: 13),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
