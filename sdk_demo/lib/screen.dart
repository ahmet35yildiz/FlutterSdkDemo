import 'package:flutter/material.dart';
import 'package:sdk_pack/sdk_pack.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              SdkClass().click();
              SdkClass().showSnackbar(context);
            }, child: const Text("Snackbar")
            ),
            ElevatedButton(onPressed: (){
              SdkClass().showAlertDialog(context);
            }, child: const Text("AlertDialog")
            ),],
        ),
      ),);
  }
}
