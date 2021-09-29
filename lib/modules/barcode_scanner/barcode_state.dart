import 'package:camera/camera.dart';

class BarcodeStatus {
  final bool isCameraAvailable;
  final String error;
  final String barcode;
  final bool stopScanner;

  BarcodeStatus(
      {this.isCameraAvailable = false,
      this.stopScanner = false,
      this.error = '',
      this.barcode = ''});

  factory BarcodeStatus.available() =>
      BarcodeStatus(isCameraAvailable: true, stopScanner: false);

  factory BarcodeStatus.error(String sms) =>
      BarcodeStatus(error: sms, stopScanner: true);

  factory BarcodeStatus.barcode(String barcode) =>
      BarcodeStatus(error: barcode, stopScanner: true);

  bool get showCamera => isCameraAvailable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
