import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_flutter_riverpod/providers/selected_page_provider.dart';
import 'package:learning_flutter_riverpod/providers/theme_provider.dart';
import 'package:learning_flutter_riverpod/screens/about_page.dart';
import 'package:learning_flutter_riverpod/screens/exercises_page.dart';
import 'package:learning_flutter_riverpod/screens/user_page.dart';
import 'package:learning_flutter_riverpod/theme/theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: LearningApp(),
    ),
  );
}

class LearningApp extends ConsumerWidget {
  const LearningApp({super.key});

  final List<NavigationDestination> _navigationDestinations = const [
    NavigationDestination(icon: Icon(Icons.list), label: 'Catalogue'),
    NavigationDestination(icon: Icon(Icons.person), label: 'User'),
    NavigationDestination(icon: Icon(Icons.info), label: 'About'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPageIndex = ref.watch(selectedPageProvider);
    final themeMode = ref.watch(themeProvider).themeMode;

    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: selectedPageIndex,
            children: const <Widget>[
              ExercisesCatalogue(),
              UserPage(),
              AboutPage(),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedPageIndex,
          onDestinationSelected: (index) {
            ref.read(selectedPageProvider.notifier).state = index;
          },
          destinations: _navigationDestinations,
        ),
      ),
    );
  }
}
