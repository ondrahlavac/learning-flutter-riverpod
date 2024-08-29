import 'package:learning_flutter_riverpod/screens/excercises/consumer.dart';
import 'package:learning_flutter_riverpod/screens/excercises/family_like_in_dating.dart';
import 'package:learning_flutter_riverpod/screens/excercises/future_provider.dart';
import 'package:learning_flutter_riverpod/screens/excercises/provider.dart';
import 'package:learning_flutter_riverpod/screens/excercises/provider_llistener.dart';
import 'package:learning_flutter_riverpod/screens/excercises/selector.dart';
import 'package:learning_flutter_riverpod/screens/excercises/state_notifier_provider.dart';
import 'package:learning_flutter_riverpod/screens/excercises/stream_provider.dart';

const List<Map<String, dynamic>> excercises = [
  {
    'name': 'Provider',
    'purpose':
        'Create a provider that can be used to provide values to other parts of the app.',
    'description': '',
    'finished': false,
    'onOpen': ProviderExcercise()
  },
  {
    'name': 'Consumer',
    'purpose': 'Consume a provider\'s value within a widget.',
    'description': '',
    'finished': false,
    'onOpen': ConsumerExcercise()
  },
  {
    'name': 'Provider Listener',
    'purpose':
        'Listen to changes in a provider\'s value and perform actions based on those changes.',
    'description': '',
    'finished': false,
    'onOpen': ProviderListenerExcercise()
  },
  {
    'name': 'Selector',
    'purpose': 'Derive new values from existing providers.',
    'description': '',
    'finished': false,
    'onOpen': SelectorExcercise()
  },
  {
    'name': 'State Notifier Provider',
    'purpose': 'Create a provider that manages state using a StateNotifier.',
    'description': '',
    'finished': false,
    'onOpen': StateNotifierProviderExcercise()
  },
  {
    'name': 'Future Provider',
    'purpose': 'Create a provider that asynchonously loads data.',
    'description': '',
    'finished': false,
    'onOpen': FutureProviderExcercise()
  },
  {
    'name': 'Stream Provider',
    'purpose': 'Create a provider that listens to a stream.',
    'description': '',
    'finished': false,
    'onOpen': StreamProviderExcercise()
  },
  {
    'name': 'Family',
    'purpose': 'Create a family of providers, each with a unique key.',
    'description': '',
    'finished': false,
    'onOpen': FamilyExcercise()
  },
];
