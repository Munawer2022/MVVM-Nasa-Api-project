import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/response/api_response.dart';

import '../model/techTransfer_model.dart';
import '../respository/techTransfer_repository.dart';

class TechTransferViewViewModel with ChangeNotifier {
  final _myRepo = TechTransferRepository();

  ApiResponse<TechTransferModel> techTransferList = ApiResponse.loading();

  settechTransferList(ApiResponse<TechTransferModel> response) {
    techTransferList = response;
    notifyListeners();
  }

  Future<void> fetchTechTransferApi() async {
    settechTransferList(ApiResponse.loading());

    _myRepo.fetchTechTransferList().then((value) {
      settechTransferList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      settechTransferList(ApiResponse.error(error.toString()));
    });
  }
}
