import 'package:flutter/material.dart';

class ProviderListenerExcercise extends StatelessWidget {
  const ProviderListenerExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Listener Excercise'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Provider Listener'),
            Text('Purpose'),
            Text('''
Listens to changes in a provider's value and performs actions based on those changes.
'''),
            Text('Excercise:'),
            Text('''
- Create a provider to store the current theme.
- Use a ProviderListener to update the app's theme based on the provider's value.
'''),
          ],
        ),
      ),
    );
  }
}
