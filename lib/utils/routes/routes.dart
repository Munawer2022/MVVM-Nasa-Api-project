import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';

import '../../view/neoWs.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.neoWs:
        return MaterialPageRoute(builder: (BuildContext context) => NeoWs());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
