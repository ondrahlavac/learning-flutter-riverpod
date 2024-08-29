import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderExcercise extends ConsumerWidget {
  const ProviderExcercise({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Excercise'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Provider'),
            Text('Purpose'),
            Text('''
Creates a provider that can be used to provide values to other parts of your application.
'''),
            Text('Excercise:'),
            Text('''
- Create a provider to store the current user's name.
- Use the provider in a widget to display the name.
- Update the provider's value and observe how the UI changes.
'''),
          ],
        ),
      ),
    );
  }
}
