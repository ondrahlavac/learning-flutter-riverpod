import 'package:flutter/material.dart';

class ConsumerExcercise extends StatelessWidget {
  const ConsumerExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumer Excercise'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Consumer'),
            Text('Purpose'),
            Text('''
Consumes a provider's value within a widget.
'''),
            Text('Excercise:'),
            Text('''
- Create a provider to store a boolean indicating whether a loading indicator should be shown.
- Use a Consumer to conditionally display the loading indicator based on the provider's value.
'''),
          ],
        ),
      ),
    );
  }
}
