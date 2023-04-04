import 'package:flutter/material.dart';

class BathrobeDetailsScreen extends StatefulWidget {
  static const id = 'BathrobeDetailsScreen';

  const BathrobeDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BathrobeDetailsScreen> createState() => _BathrobeDetailsScreenState();
}

class _BathrobeDetailsScreenState extends State<BathrobeDetailsScreen> {
  String? bathrobeTitle;
  String? bathrobeDescription;
  double? bathrobePrice;
  String? bathrobeImage;
  String? bathrobeId;
  String? bathrobeSize;

  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    bathrobeTitle = routesArgs['title'];
    bathrobeImage = routesArgs['image'];
    bathrobeDescription = routesArgs['description'];
    bathrobePrice = routesArgs['price'];
    bathrobeId = routesArgs['id'];
    bathrobeSize = routesArgs['size'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          bathrobeTitle!,
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
                      bathrobeTitle!,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      bathrobePrice.toString(),
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
                bathrobeImage!,
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
                bathrobeDescription!,
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
                    bathrobeSize!,
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
