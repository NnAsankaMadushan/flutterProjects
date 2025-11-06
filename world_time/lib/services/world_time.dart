import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String? location;
  String? time;
  String? flag;
  String? url;

  WorldTime({this.location, this.flag, this.url})

  void getTime() async {
    // make the request
    http.Response response = await http.get(
      Uri.parse(
        'https://timeapi.io/api/time/current/zone?timeZone=Asia%2FColombo',
      ),
    );

    Map data = jsonDecode(response.body);

    String datetime = data['dateTime'];
    print(data);
    print(data['dateTime']);

    DateTime now = DateTime.parse(datetime);
    print(now);
  }
}
