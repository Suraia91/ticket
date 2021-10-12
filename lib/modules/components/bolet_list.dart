import 'package:flutter/material.dart';
import 'package:ticket/data/controller/bolet_list_controller.dart';
import 'package:ticket/data/models/bolet_models.dart';
import 'package:ticket/modules/components/bolet_tile.dart';

class BoletoListWidget extends StatefulWidget {
  final BoletoListController controller;
  const BoletoListWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  _BoletoListWidgetState createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<BoletoModel>>(
        valueListenable: widget.controller.boletNotifier,
        builder: (_, bolet, __) => Column(
              children: bolet.map((e) => BoletoTileWidget(data: e)).toList(),
            ));
  }
}
