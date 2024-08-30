import 'package:flutter_riverpod/flutter_riverpod.dart';

String currentUser = 'John Doe';

final currentUserProvider = Provider<String>((ref) {
  return currentUser;
});

setNewUser(String newName) {
  currentUser = newName;
}
