import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/buiness_logic/attributes/home_page_attributes.dart';
import 'package:my_portfolio/utils/utils_export.dart';
import 'package:my_portfolio/views/screens/home_page.dart';
import 'package:my_portfolio/views/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jahswill Portfolio',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          cardColor: cardColor,
          textTheme: GoogleFonts.enriquetaTextTheme(),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: cardColor,
          ),
        ),
        home: AttributeProvider<HomePageAttributes>(
          attribute: HomePageAttributes(),
          child: const Scaffold(
            body: HomePage(),
          ),
        ));
  }
}
