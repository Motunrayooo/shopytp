import 'package:flutter/material.dart';

class TowelWidget extends StatelessWidget {
  final String title;
  final String id;
  final String description;
  final String image;
  final double price;
  final VoidCallback onpress;

  TowelWidget({
    required this.title,
    required this.id,
    required this.description,
    required this.image,
    required this.price,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              // height: 100,
              child: Image.asset(image),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black38),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                price.toString(),
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
