import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 111, 232, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   "hello there",
              //   style: TextStyle(
              //     color: Color.fromRGBO(123, 23, 12, 1),
              //     fontSize: 50,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              const Text(
                "0",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                  decoration: InputDecoration(
                    hintText: "Convert your money",
                    hintStyle: TextStyle(fontSize: 23, color: Colors.white),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Colors.white,
                    filled: true,
                    fillColor: Colors.black,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.3,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  debugPrint("button clicked by me boss");
                },
                child: const Text("Click Me"),
              )
            ],
          ),
        ));
  }
}
