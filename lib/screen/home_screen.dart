import 'package:flutter/material.dart';
import 'package:shopytp/screen/bathrobe_screen.dart';
import 'package:shopytp/screen/beddings_screen.dart';
import 'package:shopytp/screen/towel_screen.dart';
import 'package:shopytp/widget/category_item.dart';
import 'package:shopytp/widget/sales_product_widget.dart';

import '../widget/sales_widget.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'home_screen';
  final imgList = [
    'images/bathrobe1.png',
    'images/large3.png',
    'images/plain beddings complete set.png',
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.sms,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          SalesWidget(imgList: imgList),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Sale Product',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  onPressed:
                      () => Navigator.pushNamed(context, TowelScreen.id),
                  child: Text(
                    textAlign: TextAlign.end,
                    'See more',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // children: dummyCategories.map((cat) {
              //          return CategoryItem(
              //            id: cat.id,
              //     title: cat.title,
              //     image: cat.image,
              //     onpress: () => Navigator.pushNamed(
              //       context,
              //       TowelScreen.id,
              //     ),
              //   );
              //            }).toList(),
              children: [
                CategoryItem(
                  id: 'a1',
                  title: 'Towels',
                  image: 'images/large3.png',
                  onpress: () => Navigator.pushNamed(
                    context,
                    TowelScreen.id,
                  ),
                ),
                CategoryItem(
                  id: 'b1',
                  title: 'Bathrobes',
                  image: 'images/bathrobe2.png',
                  onpress: () => Navigator.pushNamed(
                    context,
                    BathRobeScreen.id,
                  ),
                ),
                CategoryItem(
                  id: 'c1',
                  title: 'Beddings',
                  image: 'images/plain beddings2.png',
                  onpress: () => Navigator.pushNamed(
                    context,
                    BeddingScreen.id,
                  ),
                ),
              ],
            ),
          ),
          // Expanded(
          //   child: GridView.builder(
          //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //         maxCrossAxisExtent: 200,
          //         mainAxisSpacing: 20,
          //         crossAxisSpacing: 20,
          //         childAspectRatio: 3 / 2,
          //       ),
          //       itemCount: 2,
          //       itemBuilder: (context, index) {
          //         return FittedBox(
          //           fit: BoxFit.fill,
          //           child: Container(
          //
          //             color: Colors.red,
          //             child: Image.asset('images/bathrobe2.png'),
          //           ),
          //         );
          //       }),
          // ),
          SalesProductWidget(),
        ],
      ),
    );
  }
}

// Expanded(
//             child: Row(
//               children: [
//                 GridView(
//                   shrinkWrap: true,
// scrollDirection: Axis.horizontal,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     childAspectRatio: 3 / 2,
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 10,
//                     mainAxisExtent: 2,
//                     crossAxisSpacing: 2.0
//                   ),
//                   children: [
//                     Card(
//                       color: Colors.blue,
//                       child: Text('book'),
//                     ),
//                     Card(
//                       child: Bool,
//                       color: Colors.blue,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           )
