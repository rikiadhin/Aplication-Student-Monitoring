import 'package:flutter/material.dart';
import './page2_presensi.dart';

class PresensiSiswa3 extends StatefulWidget {
  @override
  State<PresensiSiswa3> createState() => _PresensiSiswa3State();
}

class _PresensiSiswa3State extends State<PresensiSiswa3> {
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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PresensiSiswa2()));
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
                        padding: EdgeInsets.all(30),
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Color(0xff040d12),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Container(
                          height: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pelajaran :",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                          Text(
                                            "MATEMATIKA",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 33),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Waktu :",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                          Text(
                                            "07.00 - 08.20",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Guru :",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                          Text(
                                            "Sugiyarto S.Pd",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Tanggal :",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              // Sesuaikan ukuran font yang diinginkan
                                            ),
                                          ),
                                          Text(
                                            "18 Desember 2023",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              // Sesuaikan ukuran font yang diinginkan
                                            ),
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
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        // autogroupstpwHQH (Cdm8jvdKWJ3RqSb1WhsTpw)
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                        width: double.infinity,
                        height: 370,
                        decoration: BoxDecoration(
                          color: Color(0xff5c8374),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Pertemuan ke- 7',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ANDA SUDAH PRESENSI',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mahasiswa :",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "Riki Adhi Nugroho",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 60),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "NIS :",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "160824",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Kesehatan : ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "SEHAT",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 38),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Kehadiran :",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "HADIR",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff183d3d),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        // <-- Radius
                                      ), // Sesuaikan ukuran minimum yang diinginkan
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'Geolocation',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff183d3d),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        // <-- Radius
                                      ), // Sesuaikan ukuran minimum yang diinginkan
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.fingerprint_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'Presensi',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
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
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
