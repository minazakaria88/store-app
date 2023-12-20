import 'package:flutter/material.dart';

void goTo(context, screen) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}

void back(context)
{
  Navigator.pop(context);
}
