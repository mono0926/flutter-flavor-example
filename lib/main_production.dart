import 'package:flutter/material.dart';

import 'app.dart';
import 'flavor.dart';

void main() {
  runApp(FlavorProvider(
    flavor: Flavor.production,
    child: App(),
  ));
}
