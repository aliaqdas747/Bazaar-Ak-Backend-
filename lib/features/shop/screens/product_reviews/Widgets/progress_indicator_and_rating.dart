
import 'package:bazaar_ak/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class RRatingProgressIndicator extends StatelessWidget {
  const RRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          flex: 1,
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: RDeviceUtils.getScreenWidth(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: RColors.grey,
              valueColor: AlwaysStoppedAnimation(RColors.primaryColor),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}
