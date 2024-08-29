import 'package:flutter/material.dart';

class StreamProviderExcercise extends StatelessWidget {
  const StreamProviderExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider Excercise'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Stream Provider'),
            Text('Purpose'),
            Text('''
Creates a provider that listens to a stream of data.
'''),
            Text('Excercise:'),
            Text('''
- Create a StreamProvider to listen to a real-time chat stream.
- Display the latest messages in a widget.
'''),
          ],
        ),
      ),
    );
  }
}
