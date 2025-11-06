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
<<<<<<< Updated upstream
    http.Response response = await http.get(Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=Europe%2FLondon'));
=======
    http.Response response = await http.get(
      Uri.parse(
        'https://timeapi.io/api/time/current/zone?timeZone=Asia%2FColombo',
      ),
    );

>>>>>>> Stashed changes
    Map data = jsonDecode(response.body);

    String datetime = data['dateTime'];
    print(data);
    print(data['dateTime']);
<<<<<<< Updated upstream
=======

    DateTime now = DateTime.parse(datetime);
    print(now);
>>>>>>> Stashed changes
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Scaffold(
      body: Text('loading screen'),
    ); // Scaffold
=======
    return Scaffold(body: Text('loading screen')); // Scaffold
>>>>>>> Stashed changes
  }
}
