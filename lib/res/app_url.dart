// import 'package:shared_preferences/shared_preferences.dart';

// String Email = '';
// loardData() async {
//   SharedPreferences sp = await SharedPreferences.getInstance();
//   Email = sp.getString('Email') ?? '';
// }

class AppUrl {
  static var apodUrl =
      'https://api.nasa.gov/planetary/apod?api_key=n9s7OtiGvv24srnCOr5OYbebTJqeKJaJ2F3u2M6e';
  static var neoWsUrl =
      'https://api.nasa.gov/neo/rest/v1/neo/browse?api_key=n9s7OtiGvv24srnCOr5OYbebTJqeKJaJ2F3u2M6e';
  static var marsUrl =
      'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=n9s7OtiGvv24srnCOr5OYbebTJqeKJaJ2F3u2M6e';
  static var marslibrary = 'https://images-api.nasa.gov/search?q=all';
  static var techTransferUrl =
      'https://api.nasa.gov/techtransfer/patent/?engine&api_key=n9s7OtiGvv24srnCOr5OYbebTJqeKJaJ2F3u2M6e';
  static var tleUrl = 'https://tle.ivanstanojevic.me/api/tle/';
  // static var moviesBaseUrl = 'https://dea91516-1da3-444b-ad94-c6d0c4dfab81.mock.pstmn.io/' ;

  // static var loginEndPint =  baseUrl + '/api/login' ;

  // static var registerApiEndPoint =  baseUrl + '/api/register' ;

  // static var moviesListEndPoint =  moviesBaseUrl + 'movies_list' ;

}
