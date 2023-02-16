import 'package:final_exam/Widgets/drawer_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

class ProfileMe extends StatefulWidget {
  const ProfileMe({super.key});

  @override
  State<ProfileMe> createState() => _ProfileMeState();
}

class _ProfileMeState extends State<ProfileMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: DrawerMenu(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text("ton16.official", style: GoogleFonts.prompt()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () => _key.currentState!.openEndDrawer(),
            icon: const Icon(
              Icons.menu,
              size: 25,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xfffefefe)),
        padding: EdgeInsets.only(left: 14, right: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://scontent.fbkk9-3.fna.fbcdn.net/v/t1.18169-9/18822_106042669564912_95756243_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=de6eea&_nc_ohc=Zt7iXE1dvL4AX95w5T_&_nc_ht=scontent.fbkk9-3.fna&oh=00_AfDaVyFIR56oUchfE16jlMxrNiRvZzTO0sYuuT9bT_AWbA&oe=6414B537"),
                      backgroundColor: Color(0xff212121),
                      radius: 40,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        SizedBox(
                          child: Text(
                            "15",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            "โพสต์",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        SizedBox(
                          child: Text(
                            "200",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            "ผู้ติดตาม",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        SizedBox(
                          child: Text(
                            "300",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            "กำลังติดตาม",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      child: Text(
                        "Thammarat Noongoen",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 3),
                    SizedBox(
                      child: Text(
                        "สาขาวิทยาการคอมพิวเตอร์ ,\nคณะศิลปศาสตร์และวิทยาศาสตร์,\nมหาวิทยาลัยราชภัฏศรีสะเกษ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 35),
                        backgroundColor: Color(0xffE0E0E0),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'แก้ไขโปรไฟล์',
                        style: TextStyle(color: Color(0xff212121)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 35),
                        backgroundColor: Color(0xffE0E0E0),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'แชร์โปรไฟล์',
                        style: TextStyle(color: Color(0xff212121)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(15, 35),
                        backgroundColor: Color(0xffE0E0E0),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Icon(
                        Icons.person_add_outlined,
                        color: Color(0xff212121),
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: const <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xffb6b3b3),
                            radius: 30,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFfefefe),
                              radius: 29,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff039BE5),
                                radius: 26,
                                child: Text(
                                  'T',
                                  style: TextStyle(
                                      fontSize: 30, color: Color(0xff212121)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('T')
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xffb6b3b3),
                            radius: 30,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFfefefe),
                              radius: 29,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff29B6F6),
                                radius: 26,
                                child: Text(
                                  'O',
                                  style: TextStyle(
                                      fontSize: 30, color: Color(0xff212121)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('O')
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xffb6b3b3),
                            radius: 30,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFfefefe),
                              radius: 29,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffB3E5FC),
                                radius: 26,
                                child: Text(
                                  'N',
                                  style: TextStyle(
                                      fontSize: 30, color: Color(0xff212121)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('N')
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const <Widget>[
                          CircleAvatar(
                            backgroundColor: Color(0xff212121),
                            radius: 30,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFfefefe),
                              radius: 29,
                              child: Icon(
                                Icons.add,
                                color: Color(0xff212121),
                                size: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('ใหม่')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  //img1
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.dribbble.com/users/954572/screenshots/5311843/gif.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //img2
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://thumbs.gfycat.com/GrouchyScarceBinturong-max-1mb.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //img3
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://media1.giphy.com/media/muHiOIlql96HdDHQRR/giphy.gif?cid=6c09b952flvcs06me2imnzb1i17aszsgr7wza72iuylpc3r4&rid=giphy.gif&ct=s"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  //รูป4
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://thumbs.gfycat.com/AdoredPleasedAyeaye-size_restricted.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //รูป5
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://64.media.tumblr.com/63295ff8bca2318650ae6fc3f61ef9ba/tumblr_p6322dV5a71wd4kuso2_400.gifv"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //img6
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.footballmanager.com/themes/custom/fmtwentytwentythree/img/components/asset-listing/fm22-to-fm23-thumbnail.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  //img7
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://media3.giphy.com/media/cJN6a1Umapyz7GnXvh/200w.gif?cid=6c09b952g12hc3jy7nbanjpuua9jyqdzgljt2byvqjm0e9qj&rid=200w.gif&ct=g"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //img8
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://media.tenor.com/8FlvA1NRSl0AAAAC/star-wars-logo.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //img9
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/874f5d103029297.5f45652441d40.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  //img10
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://media.tenor.com/kHcmsxlKHEAAAAAM/rock-one-eyebrow-raised-rock-staring.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //img11
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://media.tenor.com/_BtHLV378kgAAAAC/marvel-logo.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //img12
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://thumbs.gfycat.com/BothPracticalBackswimmer-size_restricted.gif"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  //img13
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cyberspace.mx/wp-content/uploads/2020/10/ps.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //img14
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cyberspace.mx/wp-content/uploads/2020/10/pr.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  //img15
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cyberspace.mx/wp-content/uploads/2020/10/ai.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
