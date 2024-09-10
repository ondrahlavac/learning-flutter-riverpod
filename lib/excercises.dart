const Map<String, Map<String, dynamic>> excercises = {
  'provider': {
    'name': 'Provider',
    'purpose':
        'Create a provider that can be used to provide values to other parts of the app.',
    'description': '',
    'finished': false,
  },
  'state-provider': {
    'name': 'State Provider',
    'purpose': '',
    'description': '',
    'finished': false,
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
