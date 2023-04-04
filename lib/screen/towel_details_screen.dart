import 'package:flutter/material.dart';

class TowelDetailsScreen extends StatefulWidget {
  static const id = 'towelDetailsScreen';

  const TowelDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TowelDetailsScreen> createState() => _TowelDetailsScreenState();
}

class _TowelDetailsScreenState extends State<TowelDetailsScreen> {
  String? towelTitle;
  String? towelDescription;
  double? towelPrice;
  String? towelImage;
  String? towelId;
  String? towelSize;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    towelTitle = routeArgs['title'];
    towelImage = routeArgs['image'];
    towelDescription = routeArgs['description'];
    towelPrice = routeArgs['price'];
    towelId = routeArgs['id'];
    towelSize = routeArgs['size'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          towelTitle!,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(elevation: 0
                // backgroundColor: Colors.blue,
                ),
            child: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    towelTitle!,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    towelPrice.toString(),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffddd6f3),
                      Color(0xfffaaca8),
                    ]),
              ),
              height: 400,
              width: double.infinity,
              child: Image.asset(
                towelImage!,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Row(
                    children: [
                      ElevatedButton(

                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Icon(Icons.shopping_bag),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text(
                          'Buy',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                towelDescription!,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: Text(
                    towelSize!,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
