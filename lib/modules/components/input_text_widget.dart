import 'package:flutter/material.dart';
import 'package:ticket/data/utility/res.dart';

class InputTextWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final String? initalValue;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String value) onChanged;
  const InputTextWidget(
      {Key? key,
      required this.label,
      required this.icon,
      required this.onChanged,
      this.initalValue,
      this.validator,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          TextFormField(
            controller: controller,
            initialValue: initalValue,
            validator: validator,
            onChanged: onChanged,
            style: AppResources.inputs,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                labelText: label,
                labelStyle: AppResources.inputs,
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Icon(
                        icon,
                        color: AppResources.primary,
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 48,
                      color: AppResources.stroke,
                    )
                  ],
                ),
                border: InputBorder.none),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: AppResources.stroke,
          )
        ],
      ),
    );
  }
}
