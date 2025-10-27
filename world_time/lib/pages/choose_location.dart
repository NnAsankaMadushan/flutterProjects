import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // simulate network request for a username
    await Future.delayed(Duration(seconds: 5), () {
      print("future");
    });

    Future.delayed(Duration(seconds: 5), () {
      print("vegan");
    });

    print("statement");
  }

  // int count = 0;
  @override
  void initState() {
    print("Inite state run");
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print("Build state run");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a Location", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     setState(() {
      //       // count = count + 1;
      //     });
      //   },
      //   // child: Text("Count is : $count"),
      // ),
    );
  }
}
