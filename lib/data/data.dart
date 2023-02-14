import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:csv/csv.dart';

class Readcsv extends StatefulWidget {
  const Readcsv({Key? key}) : super(key: key);

  @override
  _ReadcsvState createState() => _ReadcsvState();
}

class _ReadcsvState extends State<Readcsv> {
  late List<dynamic> data;

  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  Future<void> loadAsset() async {
    final String response = await rootBundle.loadString('assets/ข้อมูลวัด.csv');
    final List<dynamic> decoded = CsvToListConverter().convert(response);
    setState(() {
      data = decoded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: data.length - 1,
              itemBuilder: (BuildContext context, int index) {
                final List<dynamic> row = data[index + 1];
                return Card(
                  child: ListTile(
                    title: Text(row[1]),
                    subtitle: Text(row[6]),
                  ),
                );
              },
            ),
    );
  }
}
