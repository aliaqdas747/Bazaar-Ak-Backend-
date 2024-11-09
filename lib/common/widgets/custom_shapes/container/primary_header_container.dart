import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edgs/curved_edges_widget.dart';
import 'circular_Container.dart';
class RPrimaryHeaderContainer extends StatelessWidget {
  const RPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RCurvedEdgeWidget(
      child: Container(
        color: RColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: RCircularContainer(
                backgroundColor: RColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: RCircularContainer(
                backgroundColor: RColors.textWhite.withOpacity(0.1),
              ),
            ),
            // Add your child here to ensure it's on top of other widgets
          child  ],
        ),
      ),
    );
  }
}