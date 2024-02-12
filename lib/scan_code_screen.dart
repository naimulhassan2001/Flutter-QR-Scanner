import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code/controller/scan_code_controller.dart';
import 'package:qr_code/generate_code_screen.dart';

class ScanCodeScreen extends StatefulWidget {
  const ScanCodeScreen({super.key});

  @override
  State<ScanCodeScreen> createState() => _ScanCodeScreenState();
}

class _ScanCodeScreenState extends State<ScanCodeScreen> {

  ScanCondeController scanCondeController = Get.put(ScanCondeController()) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobile Scanner'),
      actions: [
        IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GenerateCodeScreen(),)), icon: Icon(Icons.qr_code_scanner)),
        ],
      ),
      body:Column(
        children: [
          SizedBox(height: 30,),
          Obx(() => Text(scanCondeController.qrResult.value),),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () => scanCondeController.scanQR(), child: Text("Scan Code"))
        ],
      ),
    );
  }}
