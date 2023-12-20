import 'package:flutter/material.dart';
import 'package:platiz/constant.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.addToCart,
  });

  final Function addToCart;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
        addToCart();
      },
      color: defaultColor,
      child: const Text(
        'Add To Cart',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}