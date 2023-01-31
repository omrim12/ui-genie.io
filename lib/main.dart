import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const GenieIO());
}

class GenieIO extends StatelessWidget {
  const GenieIO({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genie.io App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GenieHomePage(title: 'Genie.io'),
    );
  }
}

class GenieHomePage extends StatefulWidget {
  const GenieHomePage({super.key, required this.title});

  final String title;

  @override
  State<GenieHomePage> createState() => _GenieHomePageState();
}

class _GenieHomePageState extends State<GenieHomePage> {
  String s = "";

  void _classifyClientInput() {
    setState(() {
      s = "Shawarma";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your food has been classified as ',
            ),
            Text(
              'take image of your food',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _classifyClientInput,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
