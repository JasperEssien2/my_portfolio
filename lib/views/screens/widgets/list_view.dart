import 'package:flutter/material.dart';
import 'package:my_portfolio/buiness_logic/business_logic_exports.dart';
import 'package:my_portfolio/buiness_logic/data_provider/data_provider_export.dart';
import 'package:my_portfolio/utils/utils_export.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'item_experience_display.dart';
import 'item_project_display.dart';

class DisplayListView extends StatelessWidget {
  final bool isSmallScreen;
  const DisplayListView({Key? key, this.isSmallScreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final attr = AttributeProvider.of<HomePageAttributes>(context);

    return ValueListenableBuilder<int>(
      valueListenable: attr.tabController,
      builder: (context, index, _) {
        return ListView.builder(
          itemCount: DisplayListProvider.itemList.length,
          shrinkWrap: true,
          controller: AttributeProvider.of<HomePageAttributes>(context)
              .scrollController,
          physics: isSmallScreen ? const NeverScrollableScrollPhysics() : null,
          itemBuilder: (c, index) {
            final e = DisplayListProvider.itemList[index];
            switch (e.displayType) {
              case DisplayType.PROJECT:
                return VisibilityDetector(
                  key: Key(index.toString()),
                  onVisibilityChanged: (VisibilityInfo info) {
                    if (info.visibleFraction == 1) {
                      attr.tabController.value = 1;
                    }
                  },
                  child: ItemProjectDispay(
                    itemDisplayModel: e,
                    isSmallScreen: isSmallScreen,
                  ),
                );

              case DisplayType.EXPERIENCE:
                return VisibilityDetector(
                  key: Key(index.toString()),
                  onVisibilityChanged: (VisibilityInfo info) {
                    if (info.visibleFraction == 1) {
                      attr.tabController.value = 2;
                    }
                  },
                  child: ItemExperienceDisplay(
                    itemDisplayModel: e,
                    isSmallScreen: isSmallScreen,
                  ),
                );
              case DisplayType.ARTICLES:
                return ItemExperienceDisplay(itemDisplayModel: e);
              case DisplayType.SPACER:
                return const SizedBox(
                  height: 120,
                );
            }
          },
        );
      },
    );
  }
}
