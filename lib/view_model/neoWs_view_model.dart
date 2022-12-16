import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/response/api_response.dart';

import '../model/neoWs_model.dart';
import '../respository/neoWs_repository.dart';

class NeoWsViewViewModel with ChangeNotifier {
  final _myRepo = NeoWsRepository();

  ApiResponse<NeoWs> neoWsList = ApiResponse.loading();

  setneoWsList(ApiResponse<NeoWs> response) {
    neoWsList = response;
    notifyListeners();
  }

  Future<void> fetchNeoWsApi() async {
    setneoWsList(ApiResponse.loading());

    _myRepo.fetchNeoWsList().then((value) {
      setneoWsList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setneoWsList(ApiResponse.error(error.toString()));
    });
  }
}
