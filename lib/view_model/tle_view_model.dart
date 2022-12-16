import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/response/api_response.dart';
import '../model/tle_model.dart';
import '../respository/tle_repository.dart';

class TleViewViewModel with ChangeNotifier {
  final _myRepo = TleRepository();

  ApiResponse<TLE> tleList = ApiResponse.loading();

  settleList(ApiResponse<TLE> response) {
    tleList = response;
    notifyListeners();
  }

  Future<void> fetchTleApi() async {
    settleList(ApiResponse.loading());

    _myRepo.fetchTleList().then((value) {
      settleList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      settleList(ApiResponse.error(error.toString()));
    });
  }
}
