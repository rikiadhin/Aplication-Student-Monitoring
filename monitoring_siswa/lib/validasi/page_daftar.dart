import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DaftarPage extends StatefulWidget {
  DaftarPage({Key? key}) : super(key: key);

  @override
  State<DaftarPage> createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  List _listdata = [];

  Future _getdata() async {
    try {
      final response = await http.get(Uri.parse(
          'http://192.168.0.117/api_monitoring_siswa/read-all_siswa.php'));
      if (response.statusCode == 200) {
        print(response.body);
        final data = jsonDecode(response.body);
        setState(() {
          _listdata = data;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  final formKey = GlobalKey<FormState>();

  TextEditingController nama = TextEditingController();
  TextEditingController userID = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future _simpan() async {
    final response = await http.post(
        Uri.parse(
            'http://192.168.0.117/api_monitoring_siswa/create-user_orangtua.php'),
        body: {
          "nama": nama.text,
          "userID": userID.text,
          "email": email.text,
          "password": password.text,
        });
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    _getdata();
    print(_listdata);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Daftar Page -"),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Form(
                  key: formKey,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: nama,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nama',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Nama tidak boleh kosong";
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: userID,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'userID',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "User ID tidak boleh kosong";
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email tidak boleh kosong";
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password tidak boleh kosong";
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        ElevatedButton(
                          onPressed: () async {
                            var currentState = formKey.currentState;
                            if (currentState != null &&
                                currentState.validate()) {
                              for (var userData in _listdata) {
                                if (userData['userID'] == userID.text &&
                                    userData['role'] == 'orangtua') {
                                  final snackBar = SnackBar(
                                    content: Text(
                                        "User ID sudah pernah didaftarkan"),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  return;
                                }
                              }
                              _simpan().then((value) {
                                if (value != null) {
                                  final snackBar = SnackBar(
                                    content: Text(value
                                        ? "Data berhasil ditambahkan !"
                                        : "Data gagal ditambahkan !"),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              });
                            }
                          },
                          child: Text("Daftar"),
                        ),
                        // Text(_listdata[index]['nama'])
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
