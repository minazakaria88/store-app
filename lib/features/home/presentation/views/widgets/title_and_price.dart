import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../data/models/products_model.dart';

class TitleAndPriceListItem extends StatelessWidget {
  const TitleAndPriceListItem({
    super.key,
    required this.productsModel,
  });

  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              productsModel.title,
              maxLines: 2,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: defaultColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                '${productsModel.price} \$',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}