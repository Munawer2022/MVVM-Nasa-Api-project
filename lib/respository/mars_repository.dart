import 'package:mvvm/data/network/BaseApiServices.dart';
import 'package:mvvm/data/network/NetworkApiService.dart';
import 'package:mvvm/model/mars_model.dart';

import 'package:mvvm/res/app_url.dart';

class MarsRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<Mars> fetchMarsList() async {
    try {
      dynamic response =
          await _apiServices.getGetMarsApiResponse(AppUrl.marsUrl);
      return response = Mars.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
