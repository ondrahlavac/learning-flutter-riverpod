import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_flutter_riverpod/providers/exercises_provider.dart';
import 'package:learning_flutter_riverpod/screens/exercise_detail.dart';

class ExercisesCatalogue extends ConsumerWidget {
  const ExercisesCatalogue({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<String, Map<String, dynamic>> excercises = ref.watch(exercisesProvider);

    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: excercises.length,
        itemBuilder: (context, index) {
          String currentKey = excercises.keys.elementAt(index);
          return Card(
            child: InkWell(
              onTap: () {
                // onTap open the excercise detail screen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ExerciseDetail(
                      exerciseKey: currentKey,
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            excercises[currentKey]?['name'] ??
                                'No exercise name specified',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(
                          excercises[currentKey]?['finished']
                              ? Icons.check_circle
                              : Icons.circle_outlined,
                          color: excercises[currentKey]?['finished']
                              ? Colors.green
                              : null,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      excercises[currentKey]?['purpose'] ??
                          'No exercise purpose specified',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
