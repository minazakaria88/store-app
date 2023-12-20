import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platiz/constant.dart';
import 'package:platiz/core/utils/navigation.dart';
import 'package:platiz/features/cart/presentation/views/cart_view.dart';
import 'package:platiz/features/home/presentation/manager/home_cubit/homeCubit.dart';
import 'package:platiz/features/home/presentation/manager/home_cubit/homeState.dart';

import 'container_tab_bar.dart';
import 'custom_elevated_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Container(
                color: defaultColor2,
                height: 50,
                child: TabBar(
                  onTap: (index) {
                    cubit.getColorIndex(index);
                  },
                  isScrollable: true,
                  tabs: [
                    ContainerTabBar(
                      text: 'electronics',
                      color: cubit.indexS[0] ? defaultColor : defaultColor2,
                    ),
                    ContainerTabBar(
                      text: 'jewelery',
                      color: cubit.indexS[1] ? defaultColor : defaultColor2,
                    ),
                    ContainerTabBar(
                      text: 'women\'s clothing',
                      color: cubit.indexS[2] ? defaultColor : defaultColor2,
                    ),
                    ContainerTabBar(
                      text: 'men\'s clothing',
                      color: cubit.indexS[3] ? defaultColor : defaultColor2,
                    ),
                  ],
                  indicatorColor: defaultColor2,
                  labelColor: Colors.white,
                ),
              ),
              const Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: screen,
                ),
              ),
              CustomElevatedButton(
                width: double.infinity,
                color: defaultColor2,
                size: 25,
                function: () {
                  goTo(context, const CartView());
                },
                text: 'Show Order',
              ),
            ],
          ),
        );
      },
    );
  }
}
