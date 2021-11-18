import 'package:flutter/material.dart';
import 'package:my_portfolio/buiness_logic/attributes/home_page_attributes.dart';
import 'package:my_portfolio/buiness_logic/data_provider/tab_list_provider.dart';
import 'package:my_portfolio/buiness_logic/model/tab_model.dart';
import 'package:my_portfolio/utils/utils_export.dart';
import 'package:my_portfolio/views/screens/widgets/my_info_panel.dart';
import 'package:my_portfolio/views/screens/widgets/social_networks.dart';

import 'widgets/list_view.dart';

class HomePage extends ScreenAwareStatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ScreenAwareStatefulWidgetState {
  @override
  Widget buildLargeScreen(BuildContext context) => const _Content();

  @override
  Widget buildMediumScreen(BuildContext context) => buildSmallScreen(context);

  @override
  Widget buildMobile(BuildContext context) => buildSmallScreen(context);

  @override
  Widget buildSmallScreen(BuildContext context) => const _ContentSmall();
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final attr = AttributeProvider.of<HomePageAttributes>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(
        horizontal: 62,
        vertical: size.height * 0.1,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: ValueListenableBuilder<int>(
                        valueListenable: attr.tabController,
                        builder: (context, index, _) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const MyInfoWidget(),
                              const SizedBox(height: 24),
                              ..._tabListWidget(context),
                              _socialNetworksWidget()
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  const Flexible(
                    flex: 5,
                    child: DisplayListView(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContentSmall extends StatelessWidget {
  const _ContentSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final attr = AttributeProvider.of<HomePageAttributes>(context);
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const MyInfoWidget(),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: SocialNetworkWidget(),
                ),
              ),
              const SizedBox(height: 50),
              ValueListenableBuilder<int>(
                valueListenable: attr.tabController,
                builder: (context, index, _) {
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _tabListWidget(context),
                  );
                },
              ),
              const Flexible(
                child: DisplayListView(
                  isSmallScreen: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _tabListWidget(BuildContext context) {
  final tabController =
      AttributeProvider.of<HomePageAttributes>(context).tabController;
  return TabListProvider.tabList
      .map(
        (e) => InkWell(
          onTap: () {
            tabController.value = e.index;
            if (e.index == 1) {
              AttributeProvider.of<HomePageAttributes>(context)
                  .scrollToBottom();
            }
            if (e.index == 0) {
              AttributeProvider.of<HomePageAttributes>(context).scrollToTop();
            }
          },
          child: TabItemWidget(
            tabModel: e,
            isSelected: _isSelected(tabController, e),
          ),
        ),
      )
      .toList();
}

bool _isSelected(ValueNotifier<int> tabController, TabModel e) {
  return tabController.value == e.index;
}

Padding _socialNetworksWidget() {
  return const Padding(
    padding: EdgeInsets.only(top: 52),
    child: SocialNetworkWidget(),
  );
}
