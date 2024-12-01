import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class Screenone extends StatefulWidget {
  const Screenone({super.key});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("screen one"),),
      body: Column(
        children: [
          TextButton(onPressed: (){
            Get.back();
          }, child: Text('Go back'))

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('Saurabh', 'You should do it.',
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.TOP
        );
      }),
    );
  }
}
