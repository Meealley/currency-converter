import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 950;
    });
  }

  @override
  // Widget build(BuildContext context) {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(150, 111, 232, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(150, 111, 232, 1),
          title: const Text("Currency Converter"),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Naira ${result.toStringAsFixed(2)}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                  decoration: InputDecoration(
                    hintText: "Convert your money",
                    hintStyle:
                        const TextStyle(fontSize: 23, color: Colors.white),
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: convert,
                  style: ElevatedButton.styleFrom(
                    elevation: 15,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Convert",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
