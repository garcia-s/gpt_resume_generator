import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt_resume_generator/datasources/local_datasource.dart';
import 'package:gpt_resume_generator/utils/local_datasource_interface.dart';

final gptKeyProvider = StateNotifierProvider<GptKeyStateNotifier, GptKeyState>(
    (ref) => GptKeyStateNotifier(ref, datasource: LocalDataSource()));

class GptKeyStateNotifier extends StateNotifier<GptKeyState> {
  final Ref ref;
  final ILocalDatasource datasource;
  GptKeyStateNotifier(this.ref, {required this.datasource})
      : super(GptKeyState()) {
    initialize();
  }

  void initialize() async {
    final String? key = await datasource.getGptApiKey();
    state = GptKeyState(key: key, initialized: true);
  }
}

class GptKeyState {
  final bool initialized;
  final String? key;

  GptKeyState({this.key, this.initialized = false});
}
