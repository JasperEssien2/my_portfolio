import 'package:my_portfolio/buiness_logic/model/model_export.dart';

class TabListProvider {
  TabListProvider._();

  static List<TabModel> get tabList => const [
        TabModel(index: 1, caption: 'PROJECTS'),
        TabModel(index: 2, caption: 'EXPERIENCES'),
        TabModel(index: 3, caption: 'ARTICLES'),
      ];
}
