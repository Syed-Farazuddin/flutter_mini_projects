import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserInputs extends StatefulWidget {
  const UserInputs({super.key});

  @override
  State<UserInputs> createState() => _UserInputsState();
}

class _UserInputsState extends State<UserInputs> {
  int sum = 0;
  String _greeting = "";
  TextEditingController myController = TextEditingController();
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  void greeting() {
    setState(() {
      _greeting = "Hello! ${myController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Inputs"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: myController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: greeting,
              child: const Text("Submit"),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              _greeting,
              style: const TextStyle(fontSize: 26),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: num1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter First number",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: TextField(
                controller: num2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sum = int.parse(num1.text) + int.parse(num2.text);
                });
              },
              child: const Text("Add"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Sum of two numbers is ${sum.toString()}"),
          ],
        ),
      ),
    );
  }
}
