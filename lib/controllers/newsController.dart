import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:samachar_sagar_app/repo/getRequest/getNews.dart';

import '../model/NewsModel.dart';

class NewsControlller extends GetxController {
   GetNewsModel? news;
  sendNewsRequest() async {
    var data = await GetNews().getNewsData();
    news = data;
    update();
  }
}
