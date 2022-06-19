import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.clear_all,
          size: 30,
        ),
        Row(
          children: const [
            Icon(
              Icons.fmd_good,
            ),
            Text(
              'California,US',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey,
            ),
          ],
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            'assets/images/img.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
