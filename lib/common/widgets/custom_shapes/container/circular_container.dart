import 'package:cashier_store/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    required this.backgroundColor,
  });
  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(400)),
        color: WColors.textWhite.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
