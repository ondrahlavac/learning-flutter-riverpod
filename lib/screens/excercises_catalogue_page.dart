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
          return Card(
            child: InkWell(
              onTap: () {
                // Navigate to the corresponding excercise screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => excercises[index]['onOpen'],
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
                            excercises[index]['name'],
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(
                          excercises[index]['finished']
                              ? Icons.check_circle
                              : Icons.circle_outlined,
                          color: excercises[index]['finished']
                              ? Colors.green
                              : null,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(excercises[index]['purpose']),
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
