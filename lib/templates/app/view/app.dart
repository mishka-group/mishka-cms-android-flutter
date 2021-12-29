import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/templates/counter/counter.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class App extends MaterialApp {
  /// {@macro counter_app}
  const App({Key? key}) : super(key: key, home: const CounterPage());
}
