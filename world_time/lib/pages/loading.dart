import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // make the request
    http.Response response = await http.get(Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=Europe%2FLondon'));
    Map data = jsonDecode(response.body);
    print(data);
    print(data['dateTime']);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    ); // Scaffold
  }
}
