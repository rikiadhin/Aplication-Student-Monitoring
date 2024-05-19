import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DashboardSiswa extends StatefulWidget {
  DashboardSiswa({Key? key}) : super(key: key);

  @override
  State<DashboardSiswa> createState() => _DashboardSiswaState();
}

class _DashboardSiswaState extends State<DashboardSiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD SISWA"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Selamat datang di halaman siswa")
        ],
      ),
    );
  }
}
