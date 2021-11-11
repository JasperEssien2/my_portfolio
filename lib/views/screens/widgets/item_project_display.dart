import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:my_portfolio/buiness_logic/model/model_export.dart';
import 'package:my_portfolio/utils/utils_export.dart';
import 'package:my_portfolio/views/theme/colors.dart';
import 'package:shimmer/shimmer.dart';

class ItemProjectDispay extends StatelessWidget {
  final ItemDisplayModel itemDisplayModel;
  final bool isSmallScreen;
  const ItemProjectDispay(
      {Key? key, required this.itemDisplayModel, this.isSmallScreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        js.context.callMethod('open', [itemDisplayModel.urlLink]);
      },
      child: HoveringContainer(
        widgetBuilder: (c, isHovering) => Card(
          color: cardColor,
          margin: EdgeInsets.symmetric(
            horizontal: _horizontalMargin(isHovering),
            vertical: isHovering ? 4 : 4,
          ),
          elevation: isHovering ? 8 : 2,
          shadowColor: textColor2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(isHovering ? 50 : 40.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            itemDisplayModel.caption,
                            style: _contentTextStyle.copyWith(
                              fontSize: _smallTextSize(isHovering),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 12),
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
                        ],
                      ),
                    ),
                    Container(
                      width: isHovering ? 120 : 90,
                      height: isHovering ? 120 : 90,
                      margin: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cardColor2,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            itemDisplayModel.imageUrl,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Shimmer.fromColors(
                baseColor: textColor3,
                highlightColor: cardColor2,
                direction: ShimmerDirection.ltr,
                period: const Duration(seconds: 5),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(),
                            const SizedBox(height: 12),
                            Container(),
                            const SizedBox(height: 12),
                            Container(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: isHovering ? 120 : 90,
                        height: isHovering ? 120 : 90,
                      ),
                    ],
                  ),
                ),
              )
            ],
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
