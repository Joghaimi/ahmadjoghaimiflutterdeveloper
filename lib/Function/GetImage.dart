// packages
import 'package:http/http.dart' as http;
import 'dart:convert';

// Screen
import '../Screens/home.dart';
GetImage() async {
  var url = 'https://api.pexels.com/v1/curated';
  var token = '563492ad6f917000010000013a08db9605224e11b54a8e689b14b830';
  var response = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer $token',
  });

  if (response.statusCode == 200) {
    var parsedJson = json.decode(response.body)['photos'];
    var PhotoUrl = parsedJson[0]['src']['original'];
    var photographer = parsedJson[0]['photographer'];
    home.Images.add(PhotoUrl);
    home.photographers.add(photographer);

  } else {
    throw Exception("Faild .. ");
  }
}

GetAlotOfImage() async{
  for (int i = 0; i < 5; i++) {
    GetImage();
  }
}
