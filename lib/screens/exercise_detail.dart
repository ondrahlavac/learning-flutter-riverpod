import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_flutter_riverpod/providers/exercises_provider.dart';

class ExerciseDetail extends ConsumerWidget {
  final String exerciseKey;

  const ExerciseDetail({super.key, required this.exerciseKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<String, Map<String, dynamic>> exercises = ref.watch(exercisesProvider);
    Map<String, dynamic> currentExercise = exercises[exerciseKey]!;

    return Scaffold(
      appBar: AppBar(
        title: Text(currentExercise['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentExercise['purpose'],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              currentExercise['description'],
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
