import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt_resume_generator/state/gpt_key_provider.dart';

void main() => runApp(const ProviderScope(child: Application()));

class Application extends ConsumerWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gptApikeyState = ref.watch(gptKeyProvider);
    return MaterialApp(
      home: !gptApikeyState.initialized
          ? const LoadingScreen()
          : gptApikeyState.key == null
              ? const ApiKeyParsingScreen()
              : const MainApplicationScreen(),
    );
  }
}

class ApiKeyParsingScreen extends StatelessWidget {
  const ApiKeyParsingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('LOADING'),
      ),
    );
  }
}

class MainApplicationScreen extends StatelessWidget {
  const MainApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
