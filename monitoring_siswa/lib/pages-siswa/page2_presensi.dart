import 'package:flutter/material.dart';
import './page_presensi.dart';
import './page3_presensi.dart';

class PresensiSiswa2 extends StatefulWidget {
  @override
  State<PresensiSiswa2> createState() => _PresensiSiswa2State();
}

class _PresensiSiswa2State extends State<PresensiSiswa2> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xff93b1a6),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PresensiSiswa1()));
            },
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
                        padding: EdgeInsets.fromLTRB(20, 25, 15, 10),
                        width: double.infinity,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xff040d12),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Container(
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'Mata Pelajaran  :  ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Text(
                                      'Matematika - Sugiyarto S.Pd',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      // mipa8160824oV7 (3:10)
                                      'Waktu                 :  ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Text(
                                      // mipa8160824oV7 (3:10)
                                      '07.00 - 08.20',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13 * fem,
                      ),
                      Text(
                        // senin4desember20239J5 (3:53)
                        'Pilih untuk presensi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
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
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PresensiSiswa3()));
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
                                    child: Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          // alignment: Alignment.centerLeft,
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 7',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                '18 Desember 2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      15, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(100, 0, 0, 0),
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "HADIR",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
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
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          // alignment: Alignment.centerLeft,
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 6',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                '11 Desember 2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      15, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(100, 0, 0, 0),
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "HADIR",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
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
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          // alignment: Alignment.centerLeft,
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 6',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                '11 Desember 2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      15, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(100, 0, 0, 0),
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "HADIR",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
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
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          // alignment: Alignment.centerLeft,
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 4',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                '27 November 2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      15, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(100, 0, 0, 0),
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "HADIR",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
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
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          // alignment: Alignment.centerLeft,
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 3',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                '20 November 2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      15, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(100, 0, 0, 0),
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "HADIR",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
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
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          // alignment: Alignment.centerLeft,
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 2',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                '13 November 2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      15, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(100, 0, 0, 0),
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "HADIR",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
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
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 15, 0, 0),
                                          // alignment: Alignment.centerLeft,
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pertemuan ke- 1',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                '06 November 2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      15, // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(100, 0, 0, 0),
                                          height:
                                              80, // Sesuaikan tinggi yang diinginkan
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "HADIR",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  // Sesuaikan ukuran font yang diinginkan
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
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
