import 'package:flutter/material.dart';
import 'package:platiz/constant.dart';

class TotalItem extends StatelessWidget {
  const TotalItem({
    super.key, required this.total,
  });
  final double total;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        color: defaultColor2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(

            children: [
              const Text(
                'Total :   ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
              Text(
                '${total.roundToDouble()} \$',
                style: const TextStyle(
                  fontSize: 20,
                    color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}