import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:hello_flutter/model/event_model.dart';
import 'package:http/http.dart' as http;

class EventsController extends GetxController {
  List<EventModel> events = [];

  Future<void> getEventList() async {
    final response = await http.get(
      "http://192.168.1.5:1337/GetEvents",
    );

    final data = jsonDecode(response.body);

    events = data.map((data) {
      print(EventModel.fromJson(data));
    }).toList();

    update();
  }
}
