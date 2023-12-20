import 'package:flutter/material.dart';
import 'package:platiz/core/widgets/shimmer_error.dart';

class ShimmerListItem extends StatelessWidget {
  const ShimmerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
      child: Column(
        children: [
          ShimmerWidget(width: double.infinity, height: 180),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShimmerWidget(width: 180, height: 50),
              ShimmerWidget(width: 50, height: 50)
            ],
          ),
        ],
      ),
    );
  }
}
