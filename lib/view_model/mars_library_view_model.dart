import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/response/api_response.dart';
import 'package:mvvm/model/mars_library_model.dart';

import 'package:mvvm/respository/mars_library_repository.dart';

class MarsLibraryViewViewModel with ChangeNotifier {
  final _myRepo = MarsLibraryRepository();

  ApiResponse<MarsLibrary> marsLibraryList = ApiResponse.loading();

  setmarsLibraryList(ApiResponse<MarsLibrary> response) {
    marsLibraryList = response;
    notifyListeners();
  }

  Future<void> fetchMarsLibraryApi() async {
    setmarsLibraryList(ApiResponse.loading());

    _myRepo.fetchMarsLibraryList().then((value) {
      setmarsLibraryList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setmarsLibraryList(ApiResponse.error(error.toString()));
    });
  }
}
