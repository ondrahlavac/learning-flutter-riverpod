import 'package:flutter_riverpod/flutter_riverpod.dart';

final exercisesProvider = Provider<Map<String, Map<String, dynamic>>>((ref) {
  return _exercises;
});

const Map<String, Map<String, dynamic>> _exercises = {
  'provider': {
    'name': 'Provider',
    'purpose':
        'Create a provider that can be used to provide values to other parts of the app.',
    'description':
        'Basic provider is good for static values. So we wrapped the excercises List in a Provider.',
    'finished': true,
  },
  'state-provider': {
    'name': 'State Provider',
    'purpose':
        'Create a provider that makes a simple state available to read and update.',
    'description':
        'State Provider is the simplest way to make a simple state not only readable but also updateable from the Widgets. In our exercise, we updatet the bottom navigation to use a selectedPageProvider.',
    'finished': true,
  },
  'state-notifier-provider': {
    'name': 'State Notifier Provider',
    'purpose':
        'Create a provider that manages state using a StateNotifierProvider.',
    'description': '',
    'finished': false,
  },
  'change-notifier-provider': {
    'name': 'Change Notifier Provider',
    'purpose': 'TODO',
    'description': 'TODO',
    'finished': false,
  },
  'stream-provider': {
    'name': 'Stream Provider',
    'purpose': 'Create and use a provider that listens to a stream.',
    'description': 'TODO',
    'finished': false,
  },
  'future-provider': {
    'name': 'Future Provider',
    'purpose': 'Create and use a provider that asynchonously loads data.',
    'description': 'TODO',
    'finished': false,
  },
  'scoped-provider': {
    'name': 'Scoped Provider',
    'purpose': 'TODO',
    'description': 'TODO',
    'finished': false,
  },
  'selector': {
    'name': 'Selector',
    'purpose': 'Use a selector to only watch a specific part of a state.',
    'description':
        'In Riverpod, a Selector is a method used to optimize state reading by focusing only on specific parts of the state instead of the entire state object. This helps reduce unnecessary rebuilds of widgets by ensuring that they only rebuild when the specific part of the state they depend on changes.',
    'finished': false,
  },
};
