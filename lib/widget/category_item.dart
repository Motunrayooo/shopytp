import 'package:flutter/material.dart';
import 'package:shopytp/screen/towel_details_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  VoidCallback? onpress;

   CategoryItem({
    required this.id,
    required this.title,
    required this.image,
      this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // borderRadius: BorderRadius.circular(15),
      onTap: onpress,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 100,
            child: Image.asset(image),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

//  decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           gradient: LinearGradient(
//             colors: [color.withOpacity(0.7), color],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
