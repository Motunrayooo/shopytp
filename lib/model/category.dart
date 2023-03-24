import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String image;
  final Function onpress;

  Category({
    required this.id,
    required this.title,
    required this.image,
    required this.onpress,
  });
}
