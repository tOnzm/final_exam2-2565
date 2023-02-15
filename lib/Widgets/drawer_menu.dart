import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              style: TextStyle(color: Color(0xFF202222), fontSize: 16),
            ),
            accountEmail: Text(
              'Thammarat@mail.com',
              style: TextStyle(color: Color(0xFF202222), fontSize: 12),
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
              color: Color(0xFF202224),
            ),
            tileColor: Color(0xFFfefefe),
            title: const Text(
              'หน้าแรก',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Color(0xFFBDBDBD),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Color(0xFF202224)),
            tileColor: Color(0xFFfefefe),
            title: const Text(
              'ผู้จัดทำ',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Color(0xFFBDBDBD),
          ),
        ],
      ),
    );
  }
}
