import 'package:flutter/material.dart';

class SalesProductWidget extends StatelessWidget {
  const SalesProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              child: Image.asset('images/bathrobe2.png'),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'bathrobe',
              style: TextStyle(color: Colors.black38),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'description \ndescription',
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
                '#5000',
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
