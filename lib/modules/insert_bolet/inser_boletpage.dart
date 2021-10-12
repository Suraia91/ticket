import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticket/data/controller/insert_bolet_controller.dart';
import 'package:ticket/data/models/bolet_models.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/modules/components/input_text_widget.dart';
import 'package:ticket/modules/components/set_label_button.dart';

class InsertBoletPage extends StatefulWidget {
  final String? barcode;
  const InsertBoletPage({Key? key, this.barcode}) : super(key: key);

  @override
  _InsertBoletPageState createState() => _InsertBoletPageState();
}

class _InsertBoletPageState extends State<InsertBoletPage> {
  final controller = InsertBoletoController();
  final moneyInputTextController =
      MoneyMaskedTextController(leftSymbol: "Kz\$", decimalSeparator: ",");
  final dueDateInputController = MaskedTextController(mask: "00/00/0000");
  final barcodeInputTextController = TextEditingController();

  @override
  void initState() {
    if (widget.barcode != null) {
      barcodeInputTextController.text = widget.barcode!;
    }
    super.initState();
  }

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
      body: SingleChildScrollView(
        child: Padding(
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
              Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      InputTextWidget(
                          label: 'Nome do Boleto',
                          icon: Icons.description_outlined,
                          validator: controller.validateName,
                          onChanged: (value) {
                            controller.onChange(name: value);
                          }),
                      InputTextWidget(
                          label: 'Validade',
                          controller: dueDateInputController,
                          icon: FontAwesomeIcons.timesCircle,
                          validator: controller.validateVencimento,
                          onChanged: (value) {
                            controller.onChange(dueDate: value);
                          }),
                      InputTextWidget(
                          controller: moneyInputTextController,
                          label: 'Valor',
                          icon: FontAwesomeIcons.wallet,
                          validator: (_) => controller.validateValor(
                              moneyInputTextController.numberValue),
                          onChanged: (value) {
                            controller.onChange(
                                value: moneyInputTextController.numberValue);
                          }),
                      InputTextWidget(
                          controller: barcodeInputTextController,
                          label: 'Codigo',
                          icon: FontAwesomeIcons.barcode,
                          validator: controller.validateCodigo,
                          onChanged: (value) {
                            controller.onChange(barcode: value);
                          })
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SetLabelButtons(
          enableSecundaryColor: true,
          primaryLabel: 'Cancelar',
          primaryOnPressed: () {},
          secondaryLabel: 'Cadastrar',
          secondaryOnPressed: () async {
            await controller.cadastrar();
            Navigator.pop(context);
          }),
    );
  }
}
