import 'package:flutter/material.dart';
//1.create a variable that contains the converted currency value
//2.create a function that multiplies the value given the text filed with the dollar value
//3.to store the value in the varian=ble that we created
//.display the variable

class Mypage extends StatefulWidget {
// it requires create state function
  const Mypage({super.key});
// we cannot create an instance of the state class as it is an abstract class. So its extend, get the build function and extend it.

//create state function
  @override
  State<Mypage> createState() => _Mypage(); //creates a state and return a state
}

//so we create a new class that extends the state
//this is a private class where everything is mutable
class _Mypage extends State<Mypage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  // it gives the access to text in the entire widget where ever we need
  void convert() {
    result = double.parse(textEditingController.text) * 83;
    setState(() {});
    //Notify the framework that the internal state of this object has changed.Here it is double result
  }

  void clearTextField() {
    textEditingController.clear();
    result = 0;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 57, 58),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white70),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0, // Adjust the font size as desired
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: clearTextField,
                      icon: const Icon(
                        Icons.cleaning_services_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 43, 3, 69),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
