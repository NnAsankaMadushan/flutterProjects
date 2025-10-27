import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    final response = await http.get(
    uri,
    headers: {
      'User-Agent':
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
      'Accept': 'application/json',
    },
  );
    if (response.statusCode == 200) {
    // ✅ Safe to decode JSON
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  } else {
    // ❌ Something went wrong
    print('Request failed with status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
