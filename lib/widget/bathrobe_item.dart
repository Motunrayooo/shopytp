import 'package:flutter/material.dart';
import 'package:shopytp/screen/bathrobe_details_screen.dart';

class BathRobeWidget extends StatelessWidget {
  final String title;
  final String id;
  final String description;
  final String image;
  final double price;
  final VoidCallback onpress;
  final String size;
   BathRobeWidget({
    required this.title,
    required this.id,
    required this.description,
    required this.image,
    required this.price,
    required this.onpress,
    required this.size,
  });

  void selectedBathrobes(BuildContext ctx) {
      Navigator.pushNamed(
        //passing data to routes using arguments from bathrobe item to bathrobe Details screen
          ctx,
          BathrobeDetailsScreen.id,
          arguments: {
            'id': id,
            'title': title,
            'description': description,
            'image': image,
            'price': price,
            'size': size,
          });
    }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectedBathrobes(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '#${price.toString()}0',
                    style: Theme.of(context).textTheme.labelSmall,
                    // TextStyle(
                    //   fontWeight: FontWeight.bold,
                    // ),
                  ),
                  Text(''),
                ],
              ),
            ),
            Container(
              // height: 100,
              child: Image.asset(
                image,
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Text(
                      title,
                      overflow: TextOverflow.fade,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    width: 110,
                    child: Text(
                      size,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
