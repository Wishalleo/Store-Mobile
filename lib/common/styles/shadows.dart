import 'package:cashier_store/core/constants/colors.dart';
import 'package:flutter/material.dart';

class WShadowsStyle {
  static final verticalProductShadow = BoxShadow(
    color: WColors.black.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
  static final horizontalProductShadow = BoxShadow(
    color: WColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
