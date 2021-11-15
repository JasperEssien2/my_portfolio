import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:my_portfolio/buiness_logic/model/model_export.dart';
import 'package:my_portfolio/utils/utils_export.dart';
import 'package:my_portfolio/views/theme/colors.dart';

class ItemExperienceDisplay extends StatelessWidget {
  final ItemDisplayModel itemDisplayModel;
  final bool isSmallScreen;

  const ItemExperienceDisplay({
    Key? key,
    required this.itemDisplayModel,
    this.isSmallScreen = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        js.context.callMethod('open', [itemDisplayModel.urlLink]);
      },
      child: HoveringContainer(
        widgetBuilder: (c, isHovering) => Container(
          margin: EdgeInsets.symmetric(
            horizontal: _horizontalMargin(isHovering),
            vertical: isHovering ? 4 : 4,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 32),
                  child: CircleAvatar(
                    radius: isHovering ? 45 : 40,
                    backgroundColor: cardColor2,
                    backgroundImage: NetworkImage(
                      itemDisplayModel.imageUrl,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        itemDisplayModel.name,
                        style: _contentTextStyle.copyWith(
                          fontSize: isHovering ? 30 : 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        itemDisplayModel.details,
                        style: _contentTextStyle.copyWith(
                          fontSize: _smallTextSize(isHovering),
                          color: textColor2,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        itemDisplayModel.caption,
                        style: _contentTextStyle.copyWith(
                          fontSize: _smallTextSize(isHovering),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double _horizontalMargin(bool isHovering) {
    return isSmallScreen
        ? 0
        : isHovering
            ? 12
            : 24;
  }

  double _smallTextSize(bool isHovering) => isHovering ? 14 : 12;

  TextStyle get _contentTextStyle {
    return const TextStyle(
      color: textColor1,
      fontWeight: FontWeight.w500,
      fontSize: 15,
    );
  }
}
