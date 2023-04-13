import 'package:flutterrr/ipaddress.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Connection {
  submitForm(String tasktitle, String taskdescription, String category,
      String user_id) async {
    // TODO: Implement form submission logicHere
    String UrlServer = "http://" + IpAddress.ip + "/connection/add_note.php";
    Uri uri = Uri.parse(UrlServer);
    var data = {
      'Id': user_id,
      'Title': tasktitle,
      'Description': taskdescription,
      'Category': category,
      // 'EndDate': EndDate,
    };
    var response = await http.post(uri, body: data);
    print(response.body);
    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: "Successfully send items");
      return;
    }

    if (response.statusCode == 400) {
      Fluttertoast.showToast(msg: "Already added");
      return;
    }
    if (response.statusCode == 404) {
      Fluttertoast.showToast(msg: "Error 404");
      return;
    }
  }
}
