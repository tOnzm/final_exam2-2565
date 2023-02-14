import 'package:final_exam/data/data2.dart';
import 'package:final_exam/page/profile.dart';
import 'package:final_exam/widget/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Thammarat';

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfffefefe),
        textTheme: GoogleFonts.promptTextTheme(textTheme).copyWith(
          bodyText2: GoogleFonts.sarabun(textStyle: textTheme.bodyText2),
        ),
        appBarTheme: const AppBarTheme(
          color: Color(0xFFe1d5c9),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFc49450),
        ),
        drawerTheme: const DrawerThemeData(
          scrimColor: Color(0xdde1d5c9),
          backgroundColor: Color(0xFFe1d5c9),
          width: 250,
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Color(0xFF202224),
          tileColor: Color(0xFFfefefe),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFe1d5c9),
          selectedIconTheme: IconThemeData(color: Color(0xFFc49450)),
          unselectedIconTheme: IconThemeData(color: Color(0xFF202224)),
          selectedLabelStyle:
              TextStyle(color: Color(0xFFc49450), fontWeight: FontWeight.w800),
          selectedItemColor: Color(0xFFc49450),
        ),
        cardTheme: CardTheme(
            color: Color(0xFFe1d5c9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0,
            shadowColor: Color(0xFF951D26)),
      ),
      home: BottomNavBar(),
    );
  }
}
