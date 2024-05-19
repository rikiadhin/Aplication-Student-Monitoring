import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import './page2_presensi.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class PresensiGuru2 extends StatefulWidget {
  PresensiGuru2({Key? key}) : super(key: key);

  @override
  State<PresensiGuru2> createState() => _PresensiGuru2State();
}

class _PresensiGuru2State extends State<PresensiGuru2> {
  late FirebaseFirestore db;

  TextEditingController? nameController;
  TextEditingController? idController;
  TextEditingController? classController;

  String name = '';
  int id = -1;
  String classC = '';

  String nameField = '';
  int num = -1;
  bool boolC = false;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    idController = TextEditingController();
    classController = TextEditingController();
    _init();
  }

  @override
  void dispose() {
    nameController!.dispose();
    idController!.dispose();
    classController!.dispose();
    super.dispose();
  }

  void _init() {
    db = FirebaseFirestore.instance;
    final firstDoc = db.collection('users').doc('my-id');
    firstDoc.get().then((value) {
      if (value.data() != null) {
        setState(() {
          name = value.data()!['name'];
          id = value.data()!['id'];
          classC = value.data()!['class'];
        });
      } else {
        setState(() {
          name = '';
          id = 0;
          classC = '';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        backgroundColor: Color(0xff93b1a6),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          title: Text("Presensi"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        // autogroupbexbPXs (Cdm8TBcDU4PDaTavxLbExB)
                        padding: EdgeInsets.fromLTRB(20, 15, 15, 15),
                        width: double.infinity,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xff040d12),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse1UZK (3:8)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 19 * fem, 0 * fem),
                              width: 50 * fem,
                              height: 50 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25 * fem),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/foto-profil.jpg',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupxnhhAh3 (Cdm8a6aN29Sspj3WaVxNHh)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 5 * fem, 0 * fem, 5 * fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // rikiadhinugrohohS5 (3:9)
                                    padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
                                    child: Text(
                                      name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    // mipa8160824oV7 (3:10)
                                    classC + ' / ' + id.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 13 * fem,
                      ),
                      Text(
                        // senin4desember20239J5 (3:53)
                        'Kelas IPA 1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 13 * fem,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff5c8374),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text("Pertemuan ke- 1"),
                                    ),
                                    Container(
                                      width: 150,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Full Name',
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 13 * fem,
                            ),
                            Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text("Materi"),
                                    ),
                                    Container(
                                      width: 150,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Full Name',
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 13 * fem,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Buat Presensi",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            14, // Sesuaikan ukuran font yang diinginkan
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff183d3d),
                                      fixedSize: const Size(150, 40),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        // <-- Radius
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 13 * fem,
                      ),
                      Text(
                        // senin4desember20239J5 (3:53)
                        'Rekap Presensi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 13 * fem,
                      ),
                      Container(
                        // autogroupstpwHQH (Cdm8jvdKWJ3RqSb1WhsTpw)
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 25 * fem, 17 * fem, 26 * fem),
                        width: double.infinity,
                        height: 560,
                        decoration: BoxDecoration(
                            color: Color(0xff5c8374),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff183d3d),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        // <-- Radius
                                      ),
                                      fixedSize: const Size(340,
                                          80), // Sesuaikan ukuran minimum yang diinginkan
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 1',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                'Materi : ---',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13 * fem,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff183d3d),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        // <-- Radius
                                      ),
                                      fixedSize: const Size(340,
                                          80), // Sesuaikan ukuran minimum yang diinginkan
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 1',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                'Materi : ---',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13 * fem,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff183d3d),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        // <-- Radius
                                      ),
                                      fixedSize: const Size(340,
                                          80), // Sesuaikan ukuran minimum yang diinginkan
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 1',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                'Materi : ---',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13 * fem,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff183d3d),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        // <-- Radius
                                      ),
                                      fixedSize: const Size(340,
                                          80), // Sesuaikan ukuran minimum yang diinginkan
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 1',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                'Materi : ---',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13 * fem,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff183d3d),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        // <-- Radius
                                      ),
                                      fixedSize: const Size(340,
                                          80), // Sesuaikan ukuran minimum yang diinginkan
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 1',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                'Materi : ---',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      16, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13 * fem,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
