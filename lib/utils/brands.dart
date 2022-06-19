import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  final int value;
  final String name;
  const Brands({Key? key, required this.value, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          top: 15.0,
          right: 5,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                'assets/logo/$value.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
