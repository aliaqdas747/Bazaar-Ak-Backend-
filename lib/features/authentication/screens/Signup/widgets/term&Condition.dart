import 'package:bazaar_ak/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class RTermConditions extends StatelessWidget {
  const RTermConditions({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(value: true, onChanged: (value) {})),
          const SizedBox(
            width: RSizes.spaceBtwItems,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: ' ${RText.isAgreeTo}  ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: RText.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark
                      ? RColors.primaryColor
                      : RColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? RColors.primaryColor
                      : RColors.primaryColor,
                )),
            TextSpan(
                text: ' and',
                style: Theme.of(context).textTheme.bodySmall),
          ])),
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 42),
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: RText.termOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark
                      ? RColors.primaryColor
                      : RColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? RColors.primaryColor
                      : RColors.primaryColor,
                )),
          ])),
        ),
      ],
    );
  }
}
