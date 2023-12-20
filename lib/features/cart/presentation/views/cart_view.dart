import 'package:flutter/material.dart';
import 'package:platiz/features/cart/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Order'),
      ),
      body: const CartViewBody(),
    );
  }
}
