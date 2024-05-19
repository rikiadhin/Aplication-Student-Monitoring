import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DashboardOrtu extends StatefulWidget {
  DashboardOrtu({Key? key}) : super(key: key);

  @override
  State<DashboardOrtu> createState() => _DashboardOrtuState();
}

class _DashboardOrtuState extends State<DashboardOrtu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD ORANG TUA"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Selamat datang di halaman orang tua")
        ],
      ),
    );
  }
}
