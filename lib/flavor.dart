import 'package:flavor_example/fIrestore_service.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

enum Flavor {
  development,
  staging,
  production,
}

class FlavorProvider extends InheritedWidget {
  final Flavor flavor;

  FlavorProvider({
    Key key,
    @required this.flavor,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child) {
    FirestoreService.configure();
  }

  static Flavor of(BuildContext context) => (context
          .ancestorInheritedElementForWidgetOfExactType(FlavorProvider)
          .widget as FlavorProvider)
      .flavor;

  @override
  bool updateShouldNotify(FlavorProvider oldWidget) => false;
}
