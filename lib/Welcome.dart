import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                const Text("Welocme to my youtube channel"),
                Container(
                  child: const Text("Welocme to my youtube channel"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
