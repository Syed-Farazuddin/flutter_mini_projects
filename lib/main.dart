import 'package:flutter/material.dart';
import 'package:my_project/pages/homepage.dart';
import 'package:my_project/pages/settings.dart';
import 'package:my_project/pages/todo_app.dart';
// import 'package:my_project/pages/tube_todo.dart';
import 'package:my_project/pages/user_inputs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
      routes: {
        "/userinputs": (context) => const UserInputs(),
        "/settings": (context) => const SettingsPage(),
        "/homepage": (context) => const MyHomePage(title: "Home"),
        "/todo": (context) => const TodoApp(),
        // "/tube_todo": (context) => const TubeTodo(),
      },
    );
  }
}
