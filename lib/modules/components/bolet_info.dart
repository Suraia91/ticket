import 'package:flutter/material.dart';
import 'package:ticket/data/utility/res.dart';

class BoletoInfoWidget extends StatelessWidget {
  final int size;
  const BoletoInfoWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppResources.secundary,
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppResources.logomini,
              color: AppResources.background,
              width: 56,
              height: 34,
            ),
            Container(
              width: 1,
              height: 32,
              color: AppResources.background,
            ),
            Text.rich(TextSpan(
                text: "Existe ",
                style: AppResources.captionBackground,
                children: [
                  TextSpan(
                    text: '$size boletos\n',
                    style: AppResources.captionBackground,
                  ),
                  TextSpan(
                    text: 'Cadastrados para pagar',
                    style: AppResources.captionBackground,
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}
