import 'package:flutter/material.dart';

import 'app.dart';
import 'fIrestore_service.dart';
import 'flavor.dart';

void main() {
  FirestoreService.configure();
  runApp(FlavorProvider(
    flavor: Flavor.development,
    child: App(),
  ));
}
