import 'dart:async';

import 'package:ravenpay/presentation/views/home/home_view.dart';
import 'package:ravenpay/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class Main {}

void main() async {
  final _logger = appLogger(Main);
  await runZonedGuarded(
        () async {
      WidgetsFlutterBinding.ensureInitialized();

      runApp(const ProviderScope(child: MyApp()));
    },
        (error, stackTrace) => _logger.e(
      error.toString(),
      stackTrace: stackTrace,
      functionName: "main",
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // application root.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ravenpay',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
