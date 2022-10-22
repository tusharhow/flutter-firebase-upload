import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/file_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UploadFileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            controller.filePicker();
          },
          child: const Text('Button'),
        ),
      ),
    );
  }
}
