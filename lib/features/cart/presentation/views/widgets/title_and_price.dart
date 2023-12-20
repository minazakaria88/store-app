import 'package:flutter/material.dart';
import 'package:platiz/constant.dart';

import '../../../../home/data/models/products_model.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key, required this.model,

  });

  final ProductsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Text(
            model.title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${model.price} \$',
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}