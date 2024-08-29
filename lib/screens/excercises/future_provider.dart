import 'package:flutter/material.dart';

class FutureProviderExcercise extends StatelessWidget {
  const FutureProviderExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider Excercise'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Future Provider'),
            Text('Purpose'),
            Text('''
Creates a provider that asynchronously loads data.
'''),
            Text('Excercise:'),
            Text('''
- Create a FutureProvider to fetch user data from an API.
- Use the provider to display a loading indicator while the data is being fetched.
- Show an error message if the fetch fails.
'''),
          ],
        ),
      ),
    );
  }
}
