import 'package:flutter/material.dart';
import 'package:platiz/constant.dart';

class NumberOfItem extends StatelessWidget {
  const NumberOfItem({
    super.key,
    required this.count,
    required this.remove,
    required this.add,
  });

  final int count;
  final Function remove;
  final Function add;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: defaultColor
          ),
          onPressed: () {
            remove();
          },
          child: const Icon(
            Icons.remove,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text(
            '$count ',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,

            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xFF29AE29)
          ),
          onPressed: () {
            add();
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
