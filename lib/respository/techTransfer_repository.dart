import 'package:mvvm/data/network/BaseApiServices.dart';
import 'package:mvvm/data/network/NetworkApiService.dart';

import 'package:mvvm/res/app_url.dart';

import '../model/techTransfer_model.dart';

class TechTransferRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<TechTransferModel> fetchTechTransferList() async {
    try {
      dynamic response = await _apiServices
          .getGetTechTransferApiResponse(AppUrl.techTransferUrl);
      return response = TechTransferModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
