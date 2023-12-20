import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.function,
    required this.width,
    required this.color,
    required this.size,
  });
  final String text;
  final Function function;
  final double width;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: () {
            function();
          },
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: size,
            ),
          ),
        ),
      ),
    );
  }
}
