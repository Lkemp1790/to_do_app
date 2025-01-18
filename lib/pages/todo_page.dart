import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // text editing controller
  TextEditingController myController = TextEditingController();

  // greeting message variable
  String greetingMessage = "";

  // greet user method
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // GreetingMessage
          Text(greetingMessage),

          TextField(
            controller: myController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Type your name"),
          ),

          // button
          ElevatedButton(onPressed: greetUser, child: Text("Tap"))
        ],
      ),
    )));
  }
}
