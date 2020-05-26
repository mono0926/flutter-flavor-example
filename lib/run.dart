import 'package:flavor_example/flavor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void run({
  @required Flavor flavor,
}) {
  runApp(
    MultiProvider(
      providers: [
        Provider.value(value: flavor),
      ],
      child: App(),
    ),
  );
}
