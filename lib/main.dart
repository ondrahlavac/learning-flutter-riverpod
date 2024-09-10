import 'package:flutter/material.dart';
import 'package:learning_flutter_riverpod/screens/about_page.dart';
import 'package:learning_flutter_riverpod/screens/excercises_page.dart';
import 'package:learning_flutter_riverpod/screens/user_page.dart';
import 'package:learning_flutter_riverpod/theme/theme.dart';

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
  int _selectedPageIndex = 0;

  final List<NavigationDestination> _navigationDestinations = const [
    NavigationDestination(icon: Icon(Icons.list), label: 'Catalogue'),
    NavigationDestination(icon: Icon(Icons.person), label: 'User'),
    NavigationDestination(icon: Icon(Icons.info), label: 'About'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: _selectedPageIndex,
            children: const <Widget>[
              ExcercisesCatalogue(),
              UserPage(),
              AboutPage(),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedPageIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedPageIndex = index;
            });
          },
          destinations: _navigationDestinations,
        ),
      ),
    );
  }
}
