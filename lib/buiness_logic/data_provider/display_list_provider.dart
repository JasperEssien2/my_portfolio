import 'package:my_portfolio/buiness_logic/model/model_export.dart';

class DisplayListProvider {
  DisplayListProvider._();

  static List<ItemDisplayModel> get itemList => const [
        ItemDisplayModel(
          caption: 'FLUTTER',
          name: 'Covid-19 tracker',
          details:
              'A complete sample application, includes API implementation, a UI screen, flutter bloc state management implementation, this project shows my coding pattern, and how i structure my projects, approach i used in making code reusable.',
          urlLink: 'https://github.com/JasperEssien2/covid_example',
          imageUrl:
              'https://firebasestorage.googleapis.com/v0/b/jahswill-dev.appspot.com/o/WhatsApp%20Image%202021-11-17%20at%2022.11.14.jpeg?alt=media&token=62377a1f-ff29-4fca-bb6b-a8e09425bf6b',
          displayType: DisplayType.PROJECT,
        ),
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
          name: 'Paint Challenge',
          details:
              'A flutter paint challenge, designing an interactive clock like color selector. Tap on this card to take a look.',
          urlLink: 'https://github.com/JasperEssien2/paint_challenge',
          imageUrl:
              'https://firebasestorage.googleapis.com/v0/b/jahswill-dev.appspot.com/o/Photo%20from%20Jahswill%20Essien.jpg?alt=media&token=74945321-59d2-4967-819e-de2fdaf841cd',
          displayType: DisplayType.PROJECT,
        ),
        ItemDisplayModel(
          caption: 'FLUTTER',
          name: 'Flutter utilities',
          details:
              "I got so lazy writing codes for api consumption and flutter cubit and state files. I thought of a way to simplify the process, and here's the way i did that!",
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
              "An ice-cream mix powder company, where I've been contracted to digitilize their business, making ordering, processing and management seamless. I lead a 3 man team, which includes a backend engineer and a UI/UX designer",
          urlLink: 'http://creamella.com.ng/',
          imageUrl:
              'https://firebasestorage.googleapis.com/v0/b/jahswill-dev.appspot.com/o/Creamella-ice-cream-png.png?alt=media&token=c9d27f4a-6b2a-427d-b02d-1e9e123949c4',
          displayType: DisplayType.EXPERIENCE,
        ),
      ];
}
