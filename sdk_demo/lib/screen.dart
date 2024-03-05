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
        backgroundColor: Colors.blueGrey,
        title: const Text('Screen'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blueGrey, Colors.lightBlue])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    SdkClass().click();
                    SdkClass().showSnackbar(context);
                  },
                  child: const Text("Snackbar")),
              ElevatedButton(
                onPressed: () {
                  SdkClass().showAlertDialog(context);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                    onSurface: Colors.grey,
                    elevation: 5,
                    shadowColor: Colors.green,
                    padding: const EdgeInsets.all(20),
                    minimumSize: const Size(150, 100),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                child: const Text("AlertDialog"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
