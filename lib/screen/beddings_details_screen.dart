import 'package:flutter/material.dart';

class BeddingDetailsScreen extends StatefulWidget {
  static const id = 'BeddingDetailsScreen';

  const BeddingDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BeddingDetailsScreen> createState() => _BeddingDetailsScreenState();
}

class _BeddingDetailsScreenState extends State<BeddingDetailsScreen> {
  String? beddingTitle;
  String? beddingDescription;
  double? beddingPrice;
  String? beddingImage;
  String? beddingId;
  String? beddingSize;

  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    beddingTitle = routesArgs['title'];
    beddingImage = routesArgs['image'];
    beddingDescription = routesArgs['description'];
    beddingPrice = routesArgs['price'];
    beddingId = routesArgs['id'];
    beddingSize = routesArgs['size'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          beddingTitle!,
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
                  Flexible(
                    child: Text(
                      beddingTitle!,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      beddingPrice.toString(),
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
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
                beddingImage!,
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
                    'description',
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
                beddingDescription!,
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
                    beddingSize!,
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
