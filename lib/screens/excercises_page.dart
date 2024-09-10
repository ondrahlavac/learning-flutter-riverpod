import 'package:flutter/material.dart';
import 'package:learning_flutter_riverpod/excercises.dart';

class ExcercisesCatalogue extends StatelessWidget {
  const ExcercisesCatalogue({super.key});

  @override
  Widget build(BuildContext context) {
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
                // Navigate to the corresponding excercise screen
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
                                'No excercise name specified',
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
                          'No excercise purpose specified',
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
