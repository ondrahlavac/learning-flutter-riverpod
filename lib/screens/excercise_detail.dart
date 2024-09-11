import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_flutter_riverpod/providers/excercises_provider.dart';

class ExcerciseDetail extends ConsumerWidget {
  final String excerciseKey;

  const ExcerciseDetail({super.key, required this.excerciseKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<String, Map<String, dynamic>> excercises =
        ref.watch(excercisesProvider);
    Map<String, dynamic> currentExcercise = excercises[excerciseKey]!;

    return Scaffold(
      appBar: AppBar(
        title: Text(currentExcercise['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentExcercise['purpose'],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              currentExcercise['description'],
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
