import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import './page2_presensi.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class PresensiSiswa1 extends StatefulWidget {
  PresensiSiswa1({Key? key}) : super(key: key);

  @override
  State<PresensiSiswa1> createState() => _PresensiSiswa1State();
}

class _PresensiSiswa1State extends State<PresensiSiswa1> {
  // List _data = [];

  // Future _getdata(){
  //   try{
  //     final response = await http.get(Uri.parse())192.168.0.117
  //   } catch(e){

  //   }
  // }

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
                              // margin: EdgeInsets.fromLTRB(
                              //     0 * fem, 5 * fem, 0 * fem, 5 * fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // // rikiadhinugrohohS5 (3:9)
                                    // padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                                    child: Text(
                                      "name",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    // mipa8160824oV7 (3:10)
                                    "id",
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
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10 * fem),
                            topRight: Radius.circular(10 * fem),
                          ),
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PresensiSiswa2()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff183d3d),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        // <-- Radius
                                      ),
                                      fixedSize: const Size(340,
                                          80), // Sesuaikan ukuran minimum yang diinginkan
                                    ),
                                    child: Container(
                                      height:
                                          80, // Sesuaikan tinggi yang diinginkan
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Matematika - Sugiyarto S.Pd',
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
                                            '07.00 - 08.20',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  16, // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                        ],
                                      ),
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
                                    child: Container(
                                      height:
                                          80, // Sesuaikan tinggi yang diinginkan
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Ilmu Pengetahuan ALam - Endang S.Pd',
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
                                            '08.20 - 09.55',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  16, // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                        ],
                                      ),
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
                                    child: Container(
                                      height:
                                          80, // Sesuaikan tinggi yang diinginkan
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Bahasa Inggris - Marhaban S.Pd',
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
                                            '09.55 - 11.15',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  16, // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                        ],
                                      ),
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
                                    child: Container(
                                      height:
                                          80, // Sesuaikan tinggi yang diinginkan
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Biologi - Ika Setyanti S.Pd',
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
                                            '11.15 - 13.10',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  16, // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                        ],
                                      ),
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
                                    child: Container(
                                      height:
                                          80, // Sesuaikan tinggi yang diinginkan
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Fisika - Brata S.Pd',
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
                                            '13.10 - 14.30',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  16, // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                        ],
                                      ),
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
