import 'package:final_exam/Widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Thammarat';

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.sarabunTextTheme(Theme.of(context).textTheme),
        primaryTextTheme:
            GoogleFonts.promptTextTheme(Theme.of(context).primaryTextTheme),
        appBarTheme: const AppBarTheme(
            color: Color(0xFFfefefe),
            titleTextStyle: TextStyle(
                color: Color(0xFF202224),
                fontSize: 20,
                fontWeight: FontWeight.w800),
            iconTheme: IconThemeData(color: Color(0xff1b1c1e))),
        iconTheme: const IconThemeData(
          color: Color(0xFFc49450),
        ),
        drawerTheme: const DrawerThemeData(
          scrimColor: Color(0xddfefefe),
          backgroundColor: Color(0xFFfefefe),
          width: 250,
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Color(0xFF202224),
          tileColor: Color(0xFFfefefe),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFfefefe),
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
