import 'package:mvvm/data/network/BaseApiServices.dart';
import 'package:mvvm/data/network/NetworkApiService.dart';

import 'package:mvvm/res/app_url.dart';

import '../model/tle_model.dart';

class TleRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<TLE> fetchTleList() async {
    try {
      dynamic response = await _apiServices.getGetTleApiResponse(AppUrl.tleUrl);
      return response = TLE.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
