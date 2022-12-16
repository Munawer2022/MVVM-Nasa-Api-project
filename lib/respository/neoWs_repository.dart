import 'package:mvvm/data/network/BaseApiServices.dart';
import 'package:mvvm/data/network/NetworkApiService.dart';

import 'package:mvvm/res/app_url.dart';

import '../model/neoWs_model.dart';

class NeoWsRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<NeoWs> fetchNeoWsList() async {
    try {
      dynamic response =
          await _apiServices.getGetNeoWsApiResponse(AppUrl.neoWsUrl);
      return response = NeoWs.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
