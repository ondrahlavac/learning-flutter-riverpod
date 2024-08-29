import 'package:flutter/material.dart';

class StateNotifierProviderExcercise extends StatelessWidget {
  const StateNotifierProviderExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateNotifierProvider Excercise'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('StateNotifierProvider'),
            Text('Purpose'),
            Text('''
Creates a provider that manages state using a StateNotifier.
'''),
            Text('Excercise:'),
            Text('''
- Create a StateNotifierProvider to manage the current counter value.
- Use the provider to increment and decrement the counter.
- Display the counter value in a widget.
'''),
          ],
        ),
      ),
    );
  }
}
