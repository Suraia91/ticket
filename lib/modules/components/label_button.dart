import 'package:flutter/material.dart';
import 'package:ticket/data/utility/res.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final TextStyle? style;
  const LabelButton(
      {Key? key, required this.label, required this.onTap, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 56,
      child: TextButton(
          onPressed: onTap,
          child: Text(
            label,
            style: style ?? AppResources.buttonHeading,
          )),
    );
  }
}
