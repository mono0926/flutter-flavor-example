import 'package:flutter/material.dart';

import 'app.config.dart';
import 'app.dart';

void main() {
  runApp(FlavorProvider(
    flavor: Flavor.development,
    child: App(),
  ));
}
