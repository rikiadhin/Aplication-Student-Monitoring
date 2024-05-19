import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List _listdata = [];

  Future _getdata() async {
    try {
      final response = await http.get(
          Uri.parse('http://192.168.0.117/api_monitoring_siswa/getdata_siswa.php'));
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
          title: Text("Dashboard"),
        ),
        body: ListView.builder(
            itemCount: _listdata.length,
            itemBuilder: ((context, index) {
              return Card(
                child: ListTile(
                  title: Text(_listdata[index]['nama']),
                  subtitle: Text(_listdata[index]['alamat']),
                ),
              );
            })));
  }
}
