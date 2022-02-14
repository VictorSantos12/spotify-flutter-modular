import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

Future<void> main() async {
 await loadEnv();
 runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

Future<void> loadEnv() async {
  await dotenv.load(fileName: ".env");
}