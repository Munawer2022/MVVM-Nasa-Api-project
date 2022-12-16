import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mvvm/view_model/mars_view_model.dart';
import 'package:provider/provider.dart';

import '../data/response/status.dart';
import '../utils/mars_shimmer.dart';

class Mars extends StatefulWidget {
  const Mars({Key? key}) : super(key: key);
  _MarsState createState() => _MarsState();
}

class _MarsState extends State<Mars> {
  MarsViewViewModel marsViewViewModel = MarsViewViewModel();

  @override
  void initState() {
    // TODO: implement initState
    marsViewViewModel.fetchMarsApi();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mars Rover Photos',
          style: TextStyle(color: theme.appBarTheme.backgroundColor),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          borderRadius: BorderRadius.circular(50),
          child: Icon(Icons.keyboard_arrow_left,
              color: theme.appBarTheme.backgroundColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ChangeNotifierProvider<MarsViewViewModel>(
        create: (BuildContext context) => marsViewViewModel,
        child: Consumer<MarsViewViewModel>(builder: (context, value, _) {
          switch (value.marsList.status) {
            case Status.LOADING:
              return const MarsShimmer();

            case Status.ERROR:
              return Center(child: Text(value.marsList.message.toString()));
            case Status.COMPLETED:
              return ListView.builder(
                  itemCount: value.marsList.data!.photos!.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          value.marsList.data!.photos![index].imgSrc.toString(),
                          height: 470,
                          fit: BoxFit.cover,
                          width: double.maxFinite,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rover Name ' +
                                        value.marsList.data!.photos![index]
                                            .rover!.name
                                            .toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text('Launch Time ' +
                                      value.marsList.data!.photos![index].rover!
                                          .launchDate
                                          .toString()),
                                  Text('Landing Time ' +
                                      value.marsList.data!.photos![index].rover!
                                          .landingDate
                                          .toString()),
                                  Text('Earth Data ' +
                                      value.marsList.data!.photos![index]
                                          .earthDate
                                          .toString()),
                                  Text('Status ' +
                                      value.marsList.data!.photos![index].rover!
                                          .status
                                          .toString()),
                                ])),
                      ],
                    );
                  }));
          }
          return Container();
        }),
      ),
    );
  }
}
