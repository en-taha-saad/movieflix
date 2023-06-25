import 'package:flutter/material.dart';

import 'app.dart';
import 'di_config/movieflix_application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}
