import 'package:flutter/material.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/modules/components/set_label_button.dart';

class BottomSheets extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final String title;
  final String subTitle;

  const BottomSheets(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secondaryLabel,
      required this.secondaryOnPressed,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppResources.shape,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.6),
                )),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text.rich(
                        TextSpan(
                            text: title,
                            style: AppResources.buttonBoldHeading,
                            children: [
                              TextSpan(
                                  text: "\n$subTitle",
                                  style: AppResources.buttonHeading),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 1,
                      color: AppResources.stroke,
                    ),
                    SetLabelButtons(
                        enablePrimaryColor: true,
                        primaryLabel: primaryLabel,
                        primaryOnPressed: primaryOnPressed,
                        secondaryLabel: secondaryLabel,
                        secondaryOnPressed: secondaryOnPressed)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
