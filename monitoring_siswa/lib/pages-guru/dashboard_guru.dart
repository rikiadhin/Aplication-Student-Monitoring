import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DashboardGuru extends StatefulWidget {
  DashboardGuru({Key? key}) : super(key: key);

  @override
  State<DashboardGuru> createState() => _DashboardGuruState();
}

class _DashboardGuruState extends State<DashboardGuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD GURU"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("Selamat datang di halaman guru")],
      ),
    );
  }
}
