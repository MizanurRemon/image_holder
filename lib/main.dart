// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Images",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: const HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<HomePage> createState() => myHomePage();
}

class myHomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var wd = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 200,
          width: wd,
          color: Colors.blue,
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 80,
              child: Image.asset("Images/mine.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
