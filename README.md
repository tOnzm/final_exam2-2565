# Project Flutter 
<h5 align="center">พัฒนาโดย</h5>
<h3 align="center">นายธรรมรัตน์ หนูเงิน</h3>

<h4 align="center">สาขาวิทยาการคอมพิวเตอร์, คณะศิลปศาสตร์และวิทยาศาสตร์ มหาวิทยาลัยราชภัฏศรีสะเกษ</h4>

### แพ็กเกจที่ใช้

- csv : [link](https://pub.dev/packages/csv)
- google_fonts : [link](https://pub.dev/packages/google_fonts)


## เพิ่ม Dependencies ใน Flutter

```yaml
dependencies:
  flutter:
    sdk: flutter
  ..
  cupertino_icons: ^1.0.0
  csv: ^5.0.1
  google_fonts: ^3.0.1
```

### การใช้งาน

```dart
import 'package:csv/csv.dart';
import 'package:google_fonts/google_fonts.dart';
```
## แปลงข้อมูลจาก .csv เป็น List 

```dart
import 'package:csv/csv.dart';

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
```

## การแสดงผลผ่านหน้าจอ

```dart
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

```
