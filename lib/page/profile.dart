import 'dart:ui';

import 'package:final_exam/data/data2.dart';
import 'package:final_exam/main.dart';
import 'package:final_exam/widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(
            color: Color(0xFF202224),
          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFFc49450),
        ),
      ), */
      /* drawer: Drawer(
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
                  color: Color(0xFFF9AF5E),
                ),
              ),
            ),
            ListTile(
              tileColor: Color(0xFFe1d5c9),
              title: const Text(
                'หน้าแรก',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {},
            ),
            Divider(
              color: Color(0xFFc49450),
            ),
            ListTile(
              tileColor: Color(0xFFe1d5c9),
              title: const Text(
                'ผู้จัดทำ',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {},
            ),
            Divider(
              color: Color(0xFFc49450),
            ),
          ],
        ),
      ), */
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 66,
              ),
              Divider(
                color: Color(0xffe1d5c9),
                thickness: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://scontent.fbkk9-3.fna.fbcdn.net/v/t1.18169-9/18822_106042669564912_95756243_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=de6eea&_nc_ohc=Zt7iXE1dvL4AX95w5T_&_nc_ht=scontent.fbkk9-3.fna&oh=00_AfCRShxK1mHYzhF0p1OvE8WbsTj8nr4ApRolyMFRf2uWuA&oe=64132B77',
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'นายธรรมรัตน์ หนูเงิน',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF202224)),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_on,
                    size: 18,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'กันทรลักษ์ , ศรีสะเกษ',
                    style: TextStyle(fontSize: 14, color: Color(0xFFb6b3b3)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.facebook,
                        size: 25,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.youtube_searched_for_rounded,
                        size: 25,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.facebook,
                        size: 25,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.facebook,
                        size: 25,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF202224),
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp()),
          );
        },
      ),
    );
  }
}
