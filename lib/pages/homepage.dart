import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Navigation testing",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        shadowColor: Colors.orange,
        elevation: 10,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Column(
              children: [
                const DrawerHeader(
                  child: Row(
                    children: [
                      Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Navigation bar"),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                  child: const ListTile(
                    title: Text("H O M E   P A G E"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/userinputs");
                  },
                  child: const ListTile(
                    title: Text("U S E R  I N P U T S "),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/settings");
                  },
                  child: const ListTile(
                    title: Text("S E T T I N G S  P A G E"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/todo");
                  },
                  child: const ListTile(
                    title: Text("T O D O  A P P"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/tube_todo");
                  },
                  child: const ListTile(
                    title: Text("T U B E  T O D O  A P P"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Hello its a navigation testing project",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
