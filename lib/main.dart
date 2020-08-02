import 'package:enum_to_string/enum_to_string.dart';
import 'package:flavor_example/util/logger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'flavor.dart';

void main() {
  final flavor = EnumToString.fromString(
    Flavor.values,
    const String.fromEnvironment('FLAVOR'),
  );
  logger.info('flavor: $flavor');

  runApp(
    flavor == null
        ? const ColoredBox(
            color: Colors.white,
            child: Center(
              child: Text(
                '--dart-define=FLAVOR=xxx should be specified.',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          )
        : MultiProvider(
            providers: [
              Provider.value(value: flavor),
            ],
            child: App(),
          ),
  );
}
