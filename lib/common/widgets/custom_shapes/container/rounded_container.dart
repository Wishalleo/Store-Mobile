import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class WRoundedContainer extends StatelessWidget {
  const WRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = WSizes.cardRadiusLg,
    this.backgroundColor = WColors.white,
    this.borderColor = WColors.borderPrimary,
    this.gradient,
    this.boxShadow,
  });
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
        gradient: gradient,
        boxShadow: boxShadow,
      ), // BoxDecoration
      child: child,
    );
  }
}
