import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import './page2_presensi.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class PresensiGuru3 extends StatefulWidget {
  PresensiGuru3({Key? key}) : super(key: key);

  @override
  State<PresensiGuru3> createState() => _PresensiGuru3State();
}

class _PresensiGuru3State extends State<PresensiGuru3> {
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
          title: Text("Attendence"),
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
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        width: double.infinity,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xff040d12),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "KELAS IPA 1",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          14, // Sesuaikan ukuran font yang diinginkan
                                    ),
                                  ),
                                  Text(
                                    "07.00 - 09.00",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          14, // Sesuaikan ukuran font yang diinginkan
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Pertemuan ke- 1",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          14, // Sesuaikan ukuran font yang diinginkan
                                    ),
                                  ),
                                  Text(
                                    "Persamaan Linear",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          14, // Sesuaikan ukuran font yang diinginkan
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
                      Text(
                        // senin4desember20239J5 (3:53)
                        'Senin, 4 Desember 2023',
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
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("No"),
                                        Text("NIS"),
                                        Text("Nama"),
                                        Text("Kehadiran"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Container(
                                    height: 2,
                                    width: 270,
                                    decoration: BoxDecoration(
                                      color: Color(0xff040d12),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("No"),
                                        Text("NIS"),
                                        Text("Nama"),
                                        Text("Kehadiran"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("No"),
                                        Text("NIS"),
                                        Text("Nama"),
                                        Text("Kehadiran"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("No"),
                                        Text("NIS"),
                                        Text("Nama"),
                                        Text("Kehadiran"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("No"),
                                        Text("NIS"),
                                        Text("Nama"),
                                        Text("Kehadiran"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("No"),
                                        Text("NIS"),
                                        Text("Nama"),
                                        Text("Kehadiran"),
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
