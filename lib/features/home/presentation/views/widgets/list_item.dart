import 'package:flutter/material.dart';
import 'package:platiz/features/home/data/models/products_model.dart';
import 'package:platiz/features/home/presentation/views/widgets/title_and_price.dart';

import '../../../../../constant.dart';

import 'add_to_cart.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.productsModel,
    required this.addToCart,
  });
  final ProductsModel productsModel;
  final Function addToCart;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 10),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: defaultColor2,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 7),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(productsModel.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TitleAndPriceListItem(productsModel: productsModel),
              ],
            ),
          ),
          AddToCart(addToCart: addToCart),
        ],
      ),
    );
  }
}
