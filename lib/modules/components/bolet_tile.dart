import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:ticket/data/models/bolet_models.dart';
import 'package:ticket/data/utility/res.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      child: ListTile(
        title: Text(
          data.name!,
          style: AppResources.titleListTile,
        ),
        subtitle: Text(
          'Valido ate ${data.dueDate}',
          style: AppResources.captionBody,
        ),
        trailing: Text.rich(TextSpan(
            text: "Kz",
            style: AppResources.trailingRegular,
            children: [
              TextSpan(
                  text: '${data.value!.toStringAsFixed((2))}',
                  style: AppResources.trailingBold)
            ])),
      ),
    );
  }
}
