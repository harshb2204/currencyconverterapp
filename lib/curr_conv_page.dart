import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrConv extends StatefulWidget {
  const CurrConv({super.key});

  @override
  State<CurrConv> createState() => _CurrConvState();
}

class _CurrConvState extends State<CurrConv> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(123, 15, 217, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 175, 16, 232),
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(14.0),
              color: Colors.black,
              child: Text(
                'INR $result',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Enter amount in USD',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 10, 9, 9)),
                  prefix: Icon(Icons.monetization_on),
                  filled: true,
                  fillColor: Colors.white70,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 81;
                });
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                elevation: WidgetStatePropertyAll(30),
                foregroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(255, 234, 239, 244)),
                textStyle: WidgetStatePropertyAll(
                    TextStyle(color: Color.fromARGB(255, 231, 232, 235))),
                fixedSize: WidgetStatePropertyAll(Size(100, 50)),
              ),
              child: const Text('Convert'),
            )
          ],
        ),
      ),
    );
  }
}
