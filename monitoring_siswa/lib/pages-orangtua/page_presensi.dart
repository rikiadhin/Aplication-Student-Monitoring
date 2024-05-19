import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PresensiOrtu1 extends StatefulWidget {
  PresensiOrtu1({Key? key}) : super(key: key);

  @override
  State<PresensiOrtu1> createState() => _PresensiOrtu1State();
}

class _PresensiOrtu1State extends State<PresensiOrtu1> {
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
