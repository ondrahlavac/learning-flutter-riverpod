import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_flutter_riverpod/providers/user_provider.dart';

class ProviderExcercise extends ConsumerWidget {
  const ProviderExcercise({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Excercise'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Provider',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              '''
Creates a provider that can be used to provide values to other parts of your application.
''',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'Excercise:',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '''
- Create a provider to store the current user's name.
- Use the provider in a widget to display the name.
- Update the provider's value and observe how the UI changes.
''',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('User name: '),
                                Text(ref.watch(currentUserProvider))
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setNewUser('Jane Smith');
                              // In this example, we're updating the currentUser
                              // variable directly using setNewUser().
                              // This is considered an external state change
                              // because it's happening outside of
                              // Riverpod's direct control.
                              // ref.refresh() is necessary to notify Riverpod
                              // about this change and trigger a UI update.
                              ref.refresh(currentUserProvider);
                            },
                            child: const Icon(Icons.refresh_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
