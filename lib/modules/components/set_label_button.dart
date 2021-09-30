import 'package:flutter/material.dart';
import 'package:ticket/data/utility/res.dart';

import 'divider_vertical.dart';
import 'label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;
  final bool enableSecundaryColor;

  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrimaryColor = false,
    this.enableSecundaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppResources.shape,
      height: 57,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            thickness: 1,
            height: 1,
            color: AppResources.stroke,
          ),
          Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                    child: LabelButton(
                  label: primaryLabel,
                  onTap: primaryOnPressed,
                  style: enablePrimaryColor ? AppResources.buttonPrimary : null,
                )),
                DividerVertical(),
                Expanded(
                    child: LabelButton(
                  label: secondaryLabel,
                  onTap: secondaryOnPressed,
                  style:
                      enableSecundaryColor ? AppResources.buttonPrimary : null,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
