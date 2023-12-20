import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platiz/features/cart/presentation/views/widgets/total_item.dart';
import 'package:platiz/features/home/presentation/manager/home_cubit/homeCubit.dart';
import 'package:platiz/features/home/presentation/manager/home_cubit/homeState.dart';

import 'list_cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var list = HomeCubit.get(context).cartProducts;
        return list.isEmpty
            ? const Center(
                child: Text('no items in the cart'),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => ListCartItem(
                        model: list[index],
                        index: index,
                        onPressed: () {
                          HomeCubit.get(context).deleteCartItem(index);
                        },
                      ),
                      itemCount: list.length,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TotalItem(
                    total: HomeCubit.get(context).total,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              );
      },
    );
  }
}
