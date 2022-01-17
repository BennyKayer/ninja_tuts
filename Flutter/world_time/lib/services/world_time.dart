import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  // Location name for the UI
  late String location;
  // The time in that location
  late String time;
  // URL to an asset flag icon
  late String flag;
  // Location url for the api endpoint
  late String url;
  late bool isDaytime;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = json.decode(response.body);

      String datetime = data['utc_datetime'];
      String utcOffset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(utcOffset)));

      // Same ternary as in JS
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      time = e.toString();
    }
  }
}
