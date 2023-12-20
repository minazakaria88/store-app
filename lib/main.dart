import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platiz/constant.dart';
import 'package:platiz/core/utils/dioHelper.dart';
import 'package:platiz/features/home/data/repos/home_repo_imp.dart';
import 'package:platiz/features/home/presentation/manager/home_cubit/homeCubit.dart';
import 'package:platiz/features/home/presentation/views/home_view.dart';

void main() {
  DioHelper.init();
  runApp(
    const Platiz(),
  );
}

class Platiz extends StatelessWidget {
  const Platiz({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => HomeCubit(HomeRepoImp())..getElectronicsData()..getJeweleryData()..getMenData()..getWomenData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: defaultColor2,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
