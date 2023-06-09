import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt_resume_generator/consumer_application_widget.dart';

void main() => runApp(const ProviderScope(child: MainAppWidget()));

class MainAppWidget extends StatelessWidget {
  const MainAppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ConsumerApplicationWidget();
  }
}
