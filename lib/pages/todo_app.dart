import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class Items {
  String title;
  bool? done;
  Items(this.title, this.done);
  @override
  String toString() {
    return 'Items are title: $title , done : $done';
  }
}

class _TodoAppState extends State<TodoApp> {
  List<Items> list = [];
  String error = "";
  void _addTask() {
    if (myController.text.isEmpty) {
      error = "Cannot add an empty task to your list";
      return;
    }
    Items i = Items(myController.text, false);
    setState(() {
      list.add(i);
    });
    myController.text = "";
  }

  void _deleteTask(curr) {
    List<Items> newArr = list.where((item) => item.title != curr).toList();
    setState(() {
      list = newArr;
    });
  }

  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[50],
        title: const Text("Todo Application"),
      ),
      body: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "TO DO LIST",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
                child: TextField(
                  controller: myController,
                  decoration: const InputDecoration(
                    hintText: "Enter your todo task",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _addTask,
                child: const Text(
                  "Add to list",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                // alignment: .center,
                // decoration: BoxDecoration(color: Colors.purple[100]),
                child: SizedBox(
                  height: 400,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(20.0),
                    itemCount: list.length,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              list[index].title,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.done,
                                    color: Colors.green[800],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _deleteTask(list[index].title);
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
