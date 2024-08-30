import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_flutter_riverpod/providers/user_provider.dart';

class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/avatar-guy.png'),
            ),
            const SizedBox(height: 20),
            Text(
              ref.watch(currentUserProvider),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),
            const Text(
              'Software Engineer',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
