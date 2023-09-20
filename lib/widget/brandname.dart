import 'package:flutter/material.dart';

class BrandSection extends StatelessWidget {
  const BrandSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 3, 5, 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        height: 35,
        width: 90,
        child: Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            const Text(
              "Tasla",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
                radius: 9,
                backgroundColor: Colors.white,
                child: IconButton(
                    padding: const EdgeInsets.fromLTRB(
                      0,
                      2,
                      0,
                      2,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      size: 15,
                    )))
          ],
        ),
      ),
    );
  }
}
