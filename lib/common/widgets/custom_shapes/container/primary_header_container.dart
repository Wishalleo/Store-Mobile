import 'package:cashier_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:cashier_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: WColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: WColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backgroundColor: WColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
