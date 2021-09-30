import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/modules/components/input_text_widget.dart';
import 'package:ticket/modules/components/set_label_button.dart';

class InsertBoletPage extends StatelessWidget {
  const InsertBoletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppResources.background,
      appBar: AppBar(
        backgroundColor: AppResources.background,
        elevation: 0,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: AppResources.input,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 93),
              child: Text(
                'Preencha os dados do boleto',
                style: AppResources.titleBoldHeading,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InputTextWidget(
                label: 'Nome do Boleto',
                icon: Icons.description_outlined,
                onChanged: (value) {}),
            InputTextWidget(
                label: 'Validade',
                icon: FontAwesomeIcons.timesCircle,
                onChanged: (value) {}),
            InputTextWidget(
                label: 'Valor',
                icon: FontAwesomeIcons.wallet,
                onChanged: (value) {}),
            InputTextWidget(
                label: 'Codigo',
                icon: FontAwesomeIcons.barcode,
                onChanged: (value) {})
          ],
        ),
      ),
      bottomNavigationBar: SetLabelButtons(
          enableSecundaryColor: true,
          primaryLabel: 'Cancelar',
          primaryOnPressed: () {},
          secondaryLabel: 'Cadastrar',
          secondaryOnPressed: () {}),
    );
  }
}
