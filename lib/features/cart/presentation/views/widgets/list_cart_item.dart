import 'package:flutter/material.dart';
import 'package:platiz/constant.dart';
import 'package:platiz/features/cart/presentation/views/widgets/title_and_price.dart';
import 'package:platiz/features/home/data/models/products_model.dart';
import 'package:platiz/features/home/presentation/manager/home_cubit/homeCubit.dart';

import 'number_of_item.dart';

class ListCartItem extends StatelessWidget {
  const ListCartItem({
    super.key,
    required this.model,
    required this.index,
    required this.onPressed,
  });

  final ProductsModel model;
  final int index;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Card(
            color: defaultColor2,
            elevation: 5,
            child: Row(
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        model.image,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      TitleAndPrice(model: model),
                      const SizedBox(
                        height: 10,
                      ),
                      NumberOfItem(
                        count: model.count,
                        add: () {
                          HomeCubit.get(context).addNumberOfItem(index);
                        },
                        remove: () {
                          HomeCubit.get(context).removeNumberOfItem(index);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: IconButton(
              onPressed: () {
                onPressed();
              },
              color: Colors.red,
              icon: const Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
