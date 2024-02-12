import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class ScanCondeController extends GetxController {
  RxString qrResult = "Scanner Data will appera here".obs;

  Future<void> scanQR() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.QR);
      qrResult.value = qrCode.toString();
    } catch (e) {
      print(e);
    }
  }
}
