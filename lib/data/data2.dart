import 'package:final_exam/main.dart';
import 'package:final_exam/page/profile.dart';
import 'package:final_exam/widget/bottomNavBar.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:csv/csv.dart';

class Readcsv2 extends StatefulWidget {
  const Readcsv2({Key? key}) : super(key: key);

  @override
  _Readcsv2State createState() => _Readcsv2State();
}

class _Readcsv2State extends State<Readcsv2> {
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
        title: const Text(
          'รายชื่อวัด',
          style: TextStyle(
            color: Color(0xFF202224),
          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFFc49450),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                /* gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff1b1c1e), Color(0xfffefefe)],
                ), */
                color: Color(0xFF3e1d5c9),
              ),
              accountName: Text(
                'Thammarat Noongoen',
                style: TextStyle(color: Color(0xFF202222), fontSize: 18),
              ),
              accountEmail: Text(
                'Thammarat@mail.com',
                style: TextStyle(color: Color(0xFF202222), fontSize: 14),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 10.0,
                backgroundColor: Color(0xFF202224),
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Color(0xFFfefefe),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Color(0xff202224),
              ),
              tileColor: Color(0xFFe1d5c9),
              title: const Text(
                'หน้าแรก',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            Divider(
              color: Color(0xFFc49450),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xFF202224),
              ),
              tileColor: Color(0xFFe1d5c9),
              title: const Text(
                'ผู้จัดทำ',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            Divider(
              color: Color(0xFFc49450),
            ),
          ],
        ),
      ),
      body: data == null
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
                                style: TextStyle(fontSize: 18),
                              ),
                              subtitle: Text(row[6]),
                              contentPadding: EdgeInsets.all(10.0),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF202224),
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.canPop(context);
        },
      ),
    );
  }
}
