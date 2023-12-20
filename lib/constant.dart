
import 'package:flutter/material.dart';

import 'features/home/presentation/views/widgets/electronics.dart';
import 'features/home/presentation/views/widgets/jewelery.dart';
import 'features/home/presentation/views/widgets/men_clothing.dart';
import 'features/home/presentation/views/widgets/women_clothing.dart';

const double kDefaultPadding=20;

const List<Widget> screen=[
   Electronics(),
   Jewelery(),
   MenClothing(),
   WomenClothing(),
];

const defaultColor=Colors.pink;
const Color defaultColor1= Color(0xFFed9e67);
const Color defaultColor2= Color(0xFF281e32);
const Color defaultColor3= Color(0xFFbcbcbc);
const Color defaultColor4= Color(0xFF86370e);
const Color defaultColor5= Color(0xFFD7FC70);