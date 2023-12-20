import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platiz/features/home/presentation/manager/home_cubit/homeState.dart';
import 'package:platiz/features/home/presentation/views/widgets/list_item.dart';

import '../../../../../core/widgets/shimmer_list_item.dart';
import '../../manager/home_cubit/homeCubit.dart';

class MenClothing extends StatelessWidget {
  const MenClothing({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context, state) {
        var list=HomeCubit.get(context).menProducts;
        return ListView.builder(
          itemBuilder: (context, index) => list.isEmpty
              ? const ShimmerListItem()
              : ListItem(
            productsModel: list[index],
            addToCart: () {
              HomeCubit.get(context).addToCart(list[index]);
            },
          ),
          itemCount: list.isEmpty ? 10 : list.length,
        );
      },
    );
  }
}
