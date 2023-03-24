import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SalesWidget extends StatelessWidget {
  const SalesWidget({
    Key? key,
    required this.imgList,
  }) : super(key: key);

  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 150,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FittedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Shop Ytp',
                      textAlign: TextAlign.start,
                    ),
                    const Text(
                      '80% OFF',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 30),
                    ),
                    const Text(
                      'Discover Fashion that Suite\nyour style',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Check this out'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: Swiper(
                itemBuilder: (context, index) {
                  return FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset(imgList[index]),
                  );
                },
                autoplay: false,
                scrollDirection: Axis.horizontal,
                pagination: const SwiperPagination(
                  alignment: Alignment.center,
                ),
                itemCount: imgList.length,
              ),
            )
          ],
        ),
        // color: Colors.black,
      ),
    );
  }
}
