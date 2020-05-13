import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String location; //Location name for the UI
  String time; //time in the location
  String flag; //URL to assets flag icon
  String url; //location URL for API end-point

  WorldTime({this.location, this.flag, this.url});

  //  this function is for asynchronous code
  Future<void> getTime() async {

    //  Error Handling
    try{
      //  make the request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //  print(data);

      //  get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      //  create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int .parse(offset)));

      //  set the time property
//      time = DateFormat.jm().format(now);
      time = DateFormat.jm().format(now);
    }
    catch(e){
      print('caught error:  $e');
      time = 'Could not get time data';
    }

  }
}

