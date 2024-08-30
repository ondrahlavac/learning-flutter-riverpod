import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_flutter_riverpod/providers/useless_loading_provider.dart';

class ConsumerExcercise extends StatelessWidget {
  const ConsumerExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumer Excercise'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Consumer'),
            const Text('Purpose'),
            const Text('''
Consumes a provider's value within a widget.
'''),
            const Text('Excercise:'),
            const Text('''
- Create a provider to store a boolean indicating whether a loading indicator should be shown.
- Use a Consumer to conditionally display the loading indicator based on the provider's value.
'''),
            Consumer(
              builder: (BuildContext context, WidgetRef ref, child) {
                final bool isLoading = ref.watch(isLoadingProvider);
                if (isLoading) {
                  return const CircularProgressIndicator();
                } else {
                  return const Text('Done');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
