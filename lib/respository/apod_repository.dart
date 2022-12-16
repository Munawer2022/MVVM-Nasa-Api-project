import 'package:mvvm/data/network/BaseApiServices.dart';
import 'package:mvvm/data/network/NetworkApiService.dart';
import 'package:mvvm/model/apod_model.dart';
import 'package:mvvm/res/app_url.dart';

class APODRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<APOD> fetchApodList() async {
    try {
      dynamic response =
          await _apiServices.getGetADOPApiResponse(AppUrl.apodUrl);
      return response = APOD.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
