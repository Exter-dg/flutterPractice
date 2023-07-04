import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class WorldTime {
  String location; // location name for the UI
  late String time; // time in that location
  String flag; // url to an asset flag icon
  String url; // location url for API endpoint
  late bool isDayTime;

  // Constructor
  WorldTime({
    required this.location,
    required this.flag,
    required this.url
  });

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/${url}'));
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // Create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDayTime = now.hour > 6 && now.hour < 18 ? true : false;
      // Set the time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print("Error: ${e}");
      time = "Could not get time data!";
    }

  }

}