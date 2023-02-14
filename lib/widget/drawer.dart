import 'package:flutter/material.dart';

class Drawerbuttom extends StatefulWidget {
  const Drawerbuttom({super.key});

  @override
  State<Drawerbuttom> createState() => _DrawerbuttomState();
}

class _DrawerbuttomState extends State<Drawerbuttom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF31452c)),
              accountName: Text('Thammarat Noongoen'),
              accountEmail: Text('Thammarat@mail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xFFfefefe),
                child: Text(
                  "T",
                  style: TextStyle(fontSize: 40.0, color: Color(0xFF31452c)),
                ),
              ),
            ),
            ListTile(
              title: Text('item1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('item1'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
