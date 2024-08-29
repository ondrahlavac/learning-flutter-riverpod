// Like in dating... family is always the last chapter isn't it.
import 'package:flutter/material.dart';

class FamilyExcercise extends StatelessWidget {
  const FamilyExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Excercise'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Family'),
            Text('Purpose'),
            Text('''
Creates a family of providers, each with a unique key.
'''),
            Text('Excercise:'),
            Text('''
- Create a family of providers to store the data for different users.
- Use the family to access data for specific users based on their ID.
'''),
          ],
        ),
      ),
    );
  }
}
