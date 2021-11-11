import 'package:flutter/material.dart';
import 'package:my_portfolio/buiness_logic/model/model_export.dart';
import 'package:my_portfolio/utils/utils_export.dart';
import 'package:my_portfolio/views/theme/colors.dart';

class MyInfoWidget extends StatelessWidget {
  const MyInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Hello, I'm\nJahswill Essien",
          style: TextStyle(
            color: textColor1,
            fontWeight: FontWeight.w800,
            fontSize: 72,
          ),
        ),
        const SizedBox(height: 32),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            text:
                "I'm a mobile developer currently making an impact in the telehealth space at ",
            children: [
              TextSpan(
                text: "DRO Health ",
                style: _contentTextStyle.copyWith(color: textColor1),
              ),
              TextSpan(
                style: _contentTextStyle,
                text:
                    "using flutter. I'm proficient in java for android native and flutter for multi-platform (IOS, android, web) applications, i believe in constant learning and refinement of my skills, i'm a team worker, reserved in nature. I love learning new things, when i'm not coding, love reading",
              )
            ],
            style: _contentTextStyle,
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }

  TextStyle get _contentTextStyle {
    return const TextStyle(
        color: textColor3,
        fontWeight: FontWeight.w500,
        fontSize: 15,
        height: 2.5,
        wordSpacing: 0.5);
  }
}

class TabItemWidget extends ScreenAwareStatelessWidget {
  final TabModel tabModel;
  final bool isSelected;
  const TabItemWidget({
    Key? key,
    required this.tabModel,
    this.isSelected = false,
  }) : super(key: key);

  Text _captionWIdget(bool isHovering) =>
      Text(tabModel.caption, style: _contentTextStyle(isHovering));

  Container _dashWidget(bool isHovering) {
    return Container(
      width: (isHovering || isSelected) ? 45 : 25,
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      color: _color(isHovering),
    );
  }

  Text _textWidget(bool isHovering) =>
      Text("0${tabModel.index}", style: _contentTextStyle(isHovering));

  TextStyle _contentTextStyle(bool isHovering) {
    return TextStyle(
      color: _color(isHovering),
      fontWeight: FontWeight.w500,
      fontSize: 15,
    );
  }

  Color _color(bool isHovering) =>
      isHovering || isSelected ? textColor1 : textColor3;

  @override
  Widget buildLargeScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: HoveringContainer(
        widgetBuilder: (c, isHovering) => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            _textWidget(isHovering),
            _dashWidget(isHovering),
            _captionWIdget(isHovering),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildMediumScreen(BuildContext context) => buildLargeScreen(context);

  @override
  Widget buildMobile(BuildContext context) => buildSmallScreen(context);

  @override
  Widget buildSmallScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: HoveringContainer(
        widgetBuilder: (c, isHovering) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                _textWidget(isHovering),
                _dashWidget(isHovering),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: _captionWIdget(isHovering),
            ),
          ],
        ),
      ),
    );
  }
}
