import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt_resume_generator/screens/api_setting_screen.dart';
import 'package:gpt_resume_generator/screens/loading_screen.dart';
import 'package:gpt_resume_generator/screens/main/main_screen.dart';
import 'package:gpt_resume_generator/state/gpt_key_provider.dart';

class ConsumerApplicationWidget extends ConsumerWidget {
  const ConsumerApplicationWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gptApikeyState = ref.watch(gptKeyProvider);
    return MaterialApp(
      home: gptApikeyState.initialized == false
          ? const LoadingScreen()
          : gptApikeyState.key == null
              ? const ApiSettingScreen()
              : const MainApplicationScreen(),
    );
  }
}
