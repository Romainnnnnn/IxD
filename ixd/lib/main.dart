import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider package
import 'login.dart';
import 'developping.dart';

void main() {
  runApp(const MyApp());
}

class MyAppState extends ChangeNotifier {
  // Add any state management logic here
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
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 149, 11, 18)),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = LoginPage();
        break;
      case 1:
        page = const Placeholder(); // Replace Placeholder with your Favorites page
        break;
      case 2:
        page = DevTest(); // Change DevTest to DevelopingPage
        break;
      case 3:
        page = const Placeholder(); // Replace Placeholder with your Favorites page
        break;
      default:
        throw UnimplementedError('No widget for $selectedIndex');
    }

    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: page,
      ),
    );
  }
}
