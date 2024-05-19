import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../pages-guru/dashboard_guru.dart';
import '../pages-orangtua/dashboard_ortu.dart';
import '../pages-siswa/dashboard_siswa.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

  TextEditingController nis = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController role = TextEditingController();

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
        title: Text("Login Page -"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              controller: nis,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'NIS',
              ),
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
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                if (nis.text.isEmpty || password.text.isEmpty) {
                  // Jika nis atau password kosong
                  final snackBar = SnackBar(
                    content: Text("NIS dan Password tidak boleh kosong!"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  return;
                }

                bool userFound = false;
                for (var userData in _listdata) {
                  if (userData['nis'] == nis.text) {
                    userFound = true;
                    if (userData['password'] == password.text) {
                      if (userData['role'] == 'guru') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DashboardGuru()));
                      } else if (userData['role'] == 'orangtua') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DashboardOrtu()));
                      } else if (userData['role'] == 'siswa') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DashboardSiswa()));
                      }
                      break; // Berhenti mencari begitu cocok
                    } else {
                      final snackBar = SnackBar(
                        content: Text("Password salah!"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      return;
                    }
                  }
                }

                if (!userFound) {
                  final snackBar = SnackBar(
                    content: Text("ID User tidak terdaftar!"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
