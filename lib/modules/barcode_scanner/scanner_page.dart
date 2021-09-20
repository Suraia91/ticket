import 'package:flutter/material.dart';
import 'package:ticket/data/utility/res.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(
          color: AppResources.background,
        ),
        title: Text(
          '',
          style: AppResources.buttonBackground,
        ),
      ),
    );
  }
}
