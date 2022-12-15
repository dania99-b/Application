import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../global.dart';

class UploadService {
  static Upload(String endpoint, String file) async {
    var token = await getFromSharedPreferences('token');
    var request = http.MultipartRequest('POST', Uri.parse(baseApi + endpoint));
    request.headers.addAll({
      "Accept": "application/json",
      'Content-type': 'application/json',
      'Authorization': 'Bearer ${token}'
    });

    request.files.add(await http.MultipartFile.fromPath('filename', file));
    var response = await request.send();
    print(response.statusCode);
    response.stream.transform(utf8.decoder).listen((event) {
      print(event);
    });
    if (response.statusCode == 200) {
      return response;
    } else {
      return null;
    }
  }
}
