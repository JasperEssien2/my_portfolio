import 'package:flutter/material.dart';

class HoveringContainer extends StatelessWidget {
  final Widget Function(BuildContext context, bool isHovering) widgetBuilder;

  const HoveringContainer({Key? key, required this.widgetBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isHoveringNotifier = ValueNotifier(false);

    return Builder(builder: (context) {
      return MouseRegion(
        onEnter: (_) => isHoveringNotifier.value = true,
        onExit: (_) => isHoveringNotifier.value = false,
        child: ValueListenableBuilder<bool>(
          valueListenable: isHoveringNotifier,
          builder: (c, isHovering, _) => widgetBuilder(c, isHovering),
        ),
      );
    });
  }
}
