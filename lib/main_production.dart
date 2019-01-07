import 'package:flutter/material.dart';

import 'app.config.dart';
import 'app.dart';
import 'fIrestore_service.dart';

void main() {
  FirestoreService.configure();
  runApp(FlavorProvider(
    flavor: Flavor.production,
    child: App(),
  ));
}
