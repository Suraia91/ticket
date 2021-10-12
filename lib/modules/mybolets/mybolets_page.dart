import 'package:flutter/material.dart';
import 'package:ticket/data/controller/bolet_list_controller.dart';
import 'package:ticket/data/models/bolet_models.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/modules/components/bolet_info.dart';
import 'package:ticket/modules/components/bolet_list.dart';

class MyBoletsPage extends StatefulWidget {
  const MyBoletsPage({Key? key}) : super(key: key);

  @override
  _MyBoletsPageState createState() => _MyBoletsPageState();
}

class _MyBoletsPageState extends State<MyBoletsPage> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: AppResources.primary,
              height: 40,
              width: double.maxFinite,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ValueListenableBuilder<List<BoletoModel>>(
                valueListenable: controller.boletNotifier,
                builder: (_, bolet, __) => BoletoInfoWidget(size: bolet.length),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
          child: Row(
            children: [
              Text(
                'My Bolets',
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
