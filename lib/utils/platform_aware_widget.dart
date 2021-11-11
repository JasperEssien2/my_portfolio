import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/screen_breakpoint_util.dart';

abstract class ScreenAwareStatelessWidget extends StatelessWidget
    implements ScreenAwareBase {
  const ScreenAwareStatelessWidget({Key? key}) : super(key: key);
  bool get useLayoutSpaceForMeasure => false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (useLayoutSpaceForMeasure) {
      return LayoutBuilder(
        builder: (c, constraint) {
          var size = Size(constraint.maxWidth, constraint.maxHeight);
          if (ScreenBreakPointUtil.useLarge(size)) {
            return buildLargeScreen(context);
          } else if (ScreenBreakPointUtil.useMedium(size)) {
            return buildMediumScreen(context);
          } else {
            try {
              if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
                return Align(
                    alignment: Alignment.centerRight,
                    child: buildMobile(context));
              } else {
                return buildSmallScreen(context);
              }
            } catch (e) {
              return buildSmallScreen(context);
            }
          }
        },
      );
    } else {
      if (ScreenBreakPointUtil.useSmall(size)) {
        return buildSmallScreen(context);
      } else if (ScreenBreakPointUtil.useLarge(size)) {
        return buildLargeScreen(context);
      } else if (ScreenBreakPointUtil.useMedium(size)) {
        return buildMediumScreen(context);
      } else {
        if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
          return buildMobile(context);
        } else {
          return buildSmallScreen(context);
        }
      }
    }
  }
}

abstract class ScreenAwareStatefulWidget extends StatefulWidget {
  const ScreenAwareStatefulWidget({Key? key}) : super(key: key);

  @override
  ScreenAwareStatefulWidgetState createState();
}

abstract class ScreenAwareStatefulWidgetState<
        T extends ScreenAwareStatefulWidget>
    extends State<ScreenAwareStatefulWidget> implements ScreenAwareBase {
  bool get useLayoutSpaceForMeasure => false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    if (useLayoutSpaceForMeasure) {
      return LayoutBuilder(
        builder: (c, constraint) {
          size = Size(constraint.maxWidth, constraint.maxHeight);
          if (ScreenBreakPointUtil.useLarge(size)) {
            return buildLargeScreen(context);
          } else if (ScreenBreakPointUtil.useMedium(size)) {
            return buildMediumScreen(context);
          } else {
            try {
              if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
                return Align(
                    alignment: Alignment.centerRight,
                    child: buildMobile(context));
              } else {
                return buildSmallScreen(context);
              }
            } catch (e) {
              return buildSmallScreen(context);
            }
          }
        },
      );
    } else {
      if (ScreenBreakPointUtil.useLarge(size)) {
        return buildLargeScreen(context);
      } else if (ScreenBreakPointUtil.useMedium(size)) {
        return buildMediumScreen(context);
      } else {
        try {
          if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
            return Align(
                alignment: Alignment.centerRight, child: buildMobile(context));
          } else {
            return buildSmallScreen(context);
          }
        } catch (e) {
          return buildSmallScreen(context);
        }
      }
    }
  }
}

abstract class ScreenAwareBase {
  Widget buildSmallScreen(BuildContext context);

  Widget buildMediumScreen(BuildContext context);

  Widget buildLargeScreen(BuildContext context);

  Widget buildMobile(BuildContext context);
}
