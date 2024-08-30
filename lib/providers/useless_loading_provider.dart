import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'useless_loading_provider.g.dart';

@riverpod
bool isLoading(Ref ref) {
  return true;
}
