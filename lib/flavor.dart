import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

enum Flavor { development, staging, production }

class FlavorProvider extends InheritedWidget {
  final Flavor flavor;

  const FlavorProvider({
    Key key,
    @required this.flavor,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  static Flavor of(BuildContext context) => (context
          .ancestorInheritedElementForWidgetOfExactType(FlavorProvider)
          .widget as FlavorProvider)
      .flavor;

  @override
  bool updateShouldNotify(FlavorProvider oldWidget) => false;
}
