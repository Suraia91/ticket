import 'package:flutter/material.dart';
import 'package:ticket/data/controller/bolet_list_controller.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/modules/components/bolet_list.dart';

class ExtractsPage extends StatefulWidget {
  const ExtractsPage({Key? key}) : super(key: key);

  @override
  _ExtractsPageState createState() => _ExtractsPageState();
}

class _ExtractsPageState extends State<ExtractsPage> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
          child: Row(
            children: [
              Text(
                'My extracts',
                style: AppResources.titleBoldHeading,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24),
          child: Divider(
            color: AppResources.stroke,
            thickness: 1,
            height: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: BoletoListWidget(
            controller: controller,
          ),
        ),
      ],
    );
  }
}
