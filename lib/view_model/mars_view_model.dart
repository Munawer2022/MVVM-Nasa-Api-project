import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/response/api_response.dart';
import 'package:mvvm/model/mars_model.dart';
import 'package:mvvm/respository/mars_repository.dart';

class MarsViewViewModel with ChangeNotifier {
  final _myRepo = MarsRepository();

  ApiResponse<Mars> marsList = ApiResponse.loading();

  setmarsList(ApiResponse<Mars> response) {
    marsList = response;
    notifyListeners();
  }

  Future<void> fetchMarsApi() async {
    setmarsList(ApiResponse.loading());

    _myRepo.fetchMarsList().then((value) {
      setmarsList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setmarsList(ApiResponse.error(error.toString()));
    });
  }
}
