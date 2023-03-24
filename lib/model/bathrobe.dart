class Bathrobe {
  final String id;
  final String image;
  final String title;
  final double price;
  final String description;
  final Function onpress;

  Bathrobe({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.onpress,
  });
}