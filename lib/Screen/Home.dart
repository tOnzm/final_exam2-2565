import 'package:final_exam/Widgets/drawer_menu.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List<dynamic>>? data;

  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  Future<void> loadAsset() async {
    final String response = await rootBundle.loadString('assets/ข้อมูลวัด.csv');
    final List<List<dynamic>> decoded = CsvToListConverter().convert(response);
    setState(() {
      data = decoded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รายชื่อวัด',
          style: GoogleFonts.prompt(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Container(
          child: data == null
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: data!.length - 1,
                  itemBuilder: (BuildContext context, int index) {
                    final List<dynamic> row = data![index + 1];
                    return Expanded(
                      child: Card(
                        child: SizedBox(
                          child: Column(
                            children: ListTile.divideTiles(
                              context: context,
                              tiles: [
                                ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    row[1],
                                    style: GoogleFonts.prompt(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  subtitle: Text(row[6]),
                                  contentPadding: const EdgeInsets.all(10.0),
                                  trailing: Wrap(
                                    spacing: 12,
                                    children: const <Widget>[
                                      Icon(
                                        Icons.favorite,
                                        color: Color(0xFFe1d5c9),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ).toList(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
