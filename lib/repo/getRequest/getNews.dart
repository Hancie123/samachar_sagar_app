import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:samachar_sagar_app/model/NewsModel.dart';
import 'package:samachar_sagar_app/repo/api/api.dart';

class GetNews {
  Api api = Api();

  Future<GetNewsModel?> getNewsData() async {
    try {
      var response = await api.request.get('/api/news');

      if (response.statusCode == 200) {
        var data = GetNewsModel.fromMap(response.data);
        return data;
      } else {
        Get.defaultDialog(title: "Error", content: Text("Bad Response"));
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }
}
