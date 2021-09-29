import 'package:flutter/material.dart';
import 'package:ticket/data/controller/barcode_controller.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/modules/barcode_scanner/barcode_state.dart';
import 'package:ticket/modules/components/bottom_sheet.dart';
import 'package:ticket/modules/components/set_label_button.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  final controller = BarcodeScannerController();
  @override
  void initState() {
    controller.getAvailableCameras();
    controller.statusNotifier.addListener(() {
      if (controller.status.hasBarcode) {
        Navigator.pushReplacementNamed(context, '/insert_bolet');
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Stack(
        children: [
          ValueListenableBuilder<BarcodeStatus>(
            valueListenable: controller.statusNotifier,
            builder: (_, status, __) {
              if (status.showCamera) {
                return Container(
                  child: controller.cameraController!.buildPreview(),
                );
              } else {
                return Container();
              }
            },
          ),
          RotatedBox(
            quarterTurns: 1,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.black,
                leading: BackButton(
                  color: AppResources.background,
                ),
                title: Text(
                  'Escaneie aqui o seu codigo',
                  style: AppResources.buttonBackground,
                ),
              ),
              body: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.black.withOpacity(0.6),
                  )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      )),
                  Expanded(
                      child: Container(
                    color: Colors.black.withOpacity(0.6),
                  )),
                ],
              ),
              bottomNavigationBar: SetLabelButtons(
                  primaryLabel: 'Insira o codigo',
                  primaryOnPressed: () {
                    Navigator.pushReplacementNamed(context, '/insert_bolet');
                  },
                  secondaryLabel: 'Buscar na galeria',
                  secondaryOnPressed: () {}),
            ),
          ),
          ValueListenableBuilder<BarcodeStatus>(
            valueListenable: controller.statusNotifier,
            builder: (_, status, __) {
              if (status.showCamera) {
                return BottomSheets(
                  title: 'Nao foi possivel identificar um codigo de barras',
                  subTitle: 'Tente escanear novamente ou digite o seu codigo',
                  primaryLabel: 'Escanear novamente',
                  primaryOnPressed: () {
                    controller.scanWithCamera();
                  },
                  secondaryLabel: 'Insira o código',
                  secondaryOnPressed: () {},
                );
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
