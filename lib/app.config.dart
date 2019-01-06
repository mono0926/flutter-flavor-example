import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

class AppConfig extends InheritedWidget {
  final String flavor;

  const AppConfig({
    Key key,
    @required this.flavor,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  static AppConfig of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppConfig) as AppConfig;
  }

  @override
  bool updateShouldNotify(AppConfig oldWidget) => false;
}
