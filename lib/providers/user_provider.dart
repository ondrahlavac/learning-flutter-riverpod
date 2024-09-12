import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_flutter_riverpod/git_info.dart';
import 'package:learning_flutter_riverpod/models/user.dart';

class UserNotifier extends StateNotifier<User> {
  UserNotifier()
      : super(
          User(
            name: GitInfo.author,
            email: GitInfo.email,
            position: 'Software Developer',
          ),
        );

  void updateName(String newName) {
    state = state.copyWith(name: newName);
  }

  void updateEmail(String newEmail) {
    state = state.copyWith(email: newEmail);
  }

  void updatePosition(String newPosition) {
    state = state.copyWith(position: newPosition);
  }

  void updateImage(String newImage) {
    state = state.copyWith(image: newImage);
  }
}

final userProvider = StateNotifierProvider<UserNotifier, User>((ref) {
  return UserNotifier();
});
