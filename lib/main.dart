import 'package:flutter/material.dart';
import 'package:learning_flutter_riverpod/screens/about_page.dart';
import 'package:learning_flutter_riverpod/screens/excercises_catalogue_page.dart';
import 'package:learning_flutter_riverpod/screens/user_page.dart';

void main() {
  runApp(
    const LearningApp(),
  );
}

class LearningApp extends StatefulWidget {
  const LearningApp({super.key});

  @override
  State<LearningApp> createState() => _LearningAppState();
}

class _LearningAppState extends State<LearningApp> {
  int _selectedIndex = 0;

  final List<NavigationDestination> _navigationDestinations = const [
    NavigationDestination(icon: Icon(Icons.list), label: 'Catalogue'),
    NavigationDestination(icon: Icon(Icons.person), label: 'User'),
    NavigationDestination(icon: Icon(Icons.info), label: 'About'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: _selectedIndex,
            children: const <Widget>[
              ExcercisesCatalogue(),
              UserPage(),
              AboutPage(),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: _navigationDestinations,
        ),
      ),
    );
  }
}
