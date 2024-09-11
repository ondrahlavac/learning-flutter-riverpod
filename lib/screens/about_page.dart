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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is a simple app for learning Flutter Riverpod.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => _launchUrl(
                  'https://github.com/ondrahlavac/learning-flutter-riverpod'),
              child: const Text('View on GitHub'),
            ),
            const SizedBox(height: 20),
            Text(
              'Customize your experience',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            const ThemeToggleButtons(),
          ],
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
      children: const [
        Icon(Icons.brightness_auto),
        Icon(Icons.light_mode),
        Icon(Icons.dark_mode),
      ],
    );
  }
}
