#!/bin/bash

# Get Git information
GIT_AUTHOR=$(git log -1 --pretty=format:%an)
GIT_EMAIL=$(git log -1 --pretty=format:%ae)
GIT_HASH=$(git rev-parse HEAD)
GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
GIT_URL=$(git config --get remote.origin.url)

# Create a Dart class with the git info
cat << EOF > lib/git_info.dart
class GitInfo {
  static const String author = "$GIT_AUTHOR";
  static const String email = "$GIT_EMAIL";
  static const String hash = "$GIT_HASH";
  static const String branch = "$GIT_BRANCH";
  static const String url = "$GIT_URL";
}
EOF
