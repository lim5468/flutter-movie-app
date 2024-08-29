import 'package:flutter/material.dart';
import 'package:movie_app/app/app.dart';
import 'package:movie_app/app_config.dart';
import 'package:movie_app/bootstrap.dart';
import 'package:movie_app/di/getit.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setupServices(AppFlavor.production);

    return const App();
  });
}
