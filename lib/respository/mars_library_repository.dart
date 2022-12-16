import 'package:mvvm/data/network/BaseApiServices.dart';
import 'package:mvvm/data/network/NetworkApiService.dart';
import 'package:mvvm/model/mars_library_model.dart';

import 'package:mvvm/res/app_url.dart';

class MarsLibraryRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<MarsLibrary> fetchMarsLibraryList() async {
    try {
      dynamic response =
          await _apiServices.getGetMarsLibraryApiResponse(AppUrl.marslibrary);
      return response = MarsLibrary.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
