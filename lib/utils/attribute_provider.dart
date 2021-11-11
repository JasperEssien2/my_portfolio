import 'package:flutter/material.dart';

class AttributeProvider<Arr> extends InheritedWidget {
  final Widget child;
  final Arr attribute;

  AttributeProvider({required this.child, required this.attribute})
      : super(child: child);

  static AttributeProvider create<Arr>(
      {required Widget child,
      required BuildContext context,
      required Arr Function(BuildContext context) attribute}) {
    return AttributeProvider<Arr>(
      attribute: attribute(context),
      child: child,
    );
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static Arr of<Arr>(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<AttributeProvider<Arr>>();

    assert(result != null, 'No $Arr found in context');
    return result!.attribute!;
  }

  static AttributeProvider<Arr> value<Arr>(Arr attribute,
      {required Widget child}) {
    return AttributeProvider<Arr>(
      attribute: attribute,
      child: child,
    );
    // return
  }
}