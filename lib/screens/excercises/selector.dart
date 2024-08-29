import 'package:flutter/material.dart';

class SelectorExcercise extends StatelessWidget {
  const SelectorExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selector Excercise'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Selector'),
            Text('Purpose'),
            Text('''
Derives new values from existing providers.
'''),
            Text('Excercise:'),
            Text('''
- Create providers for a list of products and a filter string.
- Use a Selector to filter the list of products based on the filter string.
'''),
          ],
        ),
      ),
    );
  }
}
