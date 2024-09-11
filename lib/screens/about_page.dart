import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_flutter_riverpod/providers/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Learning Fluttter Riverpod',
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Text(
                  'This is a simple app for learning Flutter Riverpod.',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () => _launchUrl(
                      'https://github.com/ondrahlavac/learning-flutter-riverpod'),
                  child: const Text(
                    'View on GitHub',
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 60),
                Text(
                  'Customize your experience',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20),
                Text(
                  'Select the application theme',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 10),
                const ThemeToggleButtons(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThemeToggleButtons extends ConsumerWidget {
  const ThemeToggleButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider).themeMode;

    return ToggleButtons(
      isSelected: [
        themeMode == ThemeMode.system,
        themeMode == ThemeMode.light,
        themeMode == ThemeMode.dark,
      ],
      onPressed: (int index) {
        ref.read(themeProvider.notifier).setThemeMode(ThemeMode.values[index]);
      },
      borderRadius: BorderRadius.circular(24.0),
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Icon(Icons.brightness_auto),
              Text('System'),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Icon(Icons.light_mode),
              Text('Light'),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Icon(Icons.dark_mode),
              Text('Dark'),
            ],
          ),
        ),
      ],
    );
  }
}
