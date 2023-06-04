import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contact.dart'; // Import the NewPage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {

  void onPressed(BuildContext context) {
    print('Change to contact page');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContactPage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          
          ElevatedButton.icon(
            onPressed: () {
              appState.onPressed(context);
            },
            icon: Icon(Icons.contact_page),
            label: Text('Page contact'),
          ),
        ],
      ),
    );
  }
}
