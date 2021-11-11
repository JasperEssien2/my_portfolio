class ItemDisplayModel {
  final String caption;
  final String name;
  final String details;
  final String urlLink;
  final String imageUrl;
  final DisplayType displayType;

  const ItemDisplayModel(
      {required this.caption,
      required this.name,
      required this.details,
      required this.urlLink,
      required this.displayType,
      required this.imageUrl});
}

enum DisplayType {
  // ignore: constant_identifier_names
  PROJECT,
  // ignore: constant_identifier_names
  EXPERIENCE,
  // ignore: constant_identifier_names
  ARTICLES,
  // ignore: constant_identifier_names
  SPACER,
}
