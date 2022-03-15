import 'package:flutter/material.dart' show runApp;
import 'package:minhasdespesas/app/injection.dart';
import 'app/my_app.dart';

void main() {
  setupInjection();
  runApp(const MyApp());
}
