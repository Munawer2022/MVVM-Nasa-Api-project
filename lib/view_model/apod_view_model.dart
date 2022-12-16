import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/response/api_response.dart';

import '../model/apod_model.dart';
import '../respository/apod_repository.dart';

class AuthViewViewModel with ChangeNotifier {
  final _myRepo = APODRepository();

  ApiResponse<APOD> apodList = ApiResponse.loading();

  setapodList(ApiResponse<APOD> response) {
    apodList = response;
    notifyListeners();
  }

  Future<void> fetchApodApi() async {
    setapodList(ApiResponse.loading());

    _myRepo.fetchApodList().then((value) {
      setapodList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setapodList(ApiResponse.error(error.toString()));
    });
  }
}
