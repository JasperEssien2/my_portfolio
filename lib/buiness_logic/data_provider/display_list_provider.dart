import 'package:my_portfolio/buiness_logic/model/model_export.dart';

class DisplayListProvider {
  DisplayListProvider._();

  static List<ItemDisplayModel> get itemList => const [
        ItemDisplayModel(
          caption: 'FLUTTER',
          name: 'Encards',
          details: 'An application that makes writing and sharing cards fun',
          urlLink:
              'https://drive.google.com/drive/folders/15jpyHZWWV3KgxzgteSVH6O7Q4KJirVjN',
          imageUrl:
              'https://firebasestorage.googleapis.com/v0/b/jahswill-dev.appspot.com/o/Screenshot_20210717-072800.png?alt=media&token=897649ee-9dbb-4bf4-a40c-42adc3d0349b',
          displayType: DisplayType.PROJECT,
        ),
        ItemDisplayModel(
          caption: 'FLUTTER',
          name: 'Flutter utilities',
          details:
              'A flutter package to make api consumption and other repititive tasks easier and faster to implement',
          urlLink: 'https://github.com/JasperEssien2/flutter-utilities',
          imageUrl:
              'https://logowik.com/content/uploads/images/flutter5786.jpg',
          displayType: DisplayType.PROJECT,
        ),
        ItemDisplayModel(
          caption: 'ANDROID NATIVE',
          name: 'Popular Movies',
          details:
              'An app for searching popular movies and viewing details about them, also favouriting a movie.',
          urlLink: 'https://github.com/JasperEssien2/PopularMovies',
          imageUrl:
              'https://firebasestorage.googleapis.com/v0/b/jahswill-dev.appspot.com/o/popular_movies.jpeg?alt=media&token=d11193a7-09d7-44ab-ada7-a2115ef7bf59',
          displayType: DisplayType.PROJECT,
        ),
        ItemDisplayModel(
          caption: 'spacer',
          name: '',
          details: "",
          urlLink: '',
          imageUrl: '',
          displayType: DisplayType.SPACER,
        ),
        ItemDisplayModel(
          caption: '04/2019 - Present',
          name: 'DRO Health',
          details:
              "Senior mobile developer, building telehealth features making an impact.\nI'm most proud of the wallet feature and period diary feature which i built!",
          urlLink: 'https://drohealth.com/',
          imageUrl:
              'https://firebasestorage.googleapis.com/v0/b/jahswill-dev.appspot.com/o/drohealth_logo.png?alt=media&token=458518e4-db16-4cf0-ae5c-dabe6f0b477e',
          displayType: DisplayType.EXPERIENCE,
        ),
        ItemDisplayModel(
          caption: '04/2021-Present',
          name: 'Creamella',
          details:
              "An ice-cream mix powder comoany, where I've been contracted to digitilize their business, making ordering, processing and management seamless. I lead a 3 man team, which includes a backend engineer and a UI/UX designer",
          urlLink: 'http://creamella.com.ng/',
          imageUrl:
              'https://creamella.com.ng/wp-content/uploads/2021/02/Creamella-ice-cream-png.png',
          displayType: DisplayType.EXPERIENCE,
        ),
      ];
}
