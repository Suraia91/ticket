import 'package:flutter/material.dart';
import 'package:ticket/data/utility/res.dart';

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
          color: AppResources.input,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 93, vertical: 24),
            child: Text(
              'Preencha os dados do boleto',
              style: AppResources.titleBoldHeading,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
