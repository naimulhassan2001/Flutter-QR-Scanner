import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code/controller/generate_controller.dart';
import 'package:qr_code/scan_code_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateCodeScreen extends StatefulWidget {
  const GenerateCodeScreen({super.key});

  @override
  State<GenerateCodeScreen> createState() => _GenerateCodeScreenState();
}

class _GenerateCodeScreenState extends State<GenerateCodeScreen> {
  GenerateController generateController = Get.put(GenerateController());

  @override
  Widget build(BuildContext context) {
    print(generateController.urlController.text);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Generate QR Code"),
          actions: [
            IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScanCodeScreen())),
              icon: const Icon(Icons.document_scanner_outlined),
            )
          ],
        ),
        body: Column(
          children: [
            generateController.urlController.text.isNotEmpty
                ? QrImageView(
                    data: generateController.urlController.text,
                    size: 200,
                  )
                : const SizedBox(),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: generateController.urlController,
                decoration: const InputDecoration(
                    labelText: "Enter Your Data",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    print(generateController.urlController.text);
                  });
                },
                child: const Text("Generate QR Code"))
          ],
        ));
  }
}
