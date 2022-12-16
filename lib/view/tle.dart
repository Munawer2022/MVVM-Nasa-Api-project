import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';

import '../data/response/status.dart';
import '../utils/tle_shimmer.dart';
import '../view_model/tle_view_model.dart';

class TLE extends StatefulWidget {
  const TLE({Key? key}) : super(key: key);
  _TLEState createState() => _TLEState();
}

class _TLEState extends State<TLE> {
  TleViewViewModel tleViewViewModel = TleViewViewModel();

  @override
  void initState() {
    // TODO: implement initState
    tleViewViewModel.fetchTleApi();

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
          'Two Line Element',
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
      body: ChangeNotifierProvider<TleViewViewModel>(
        create: (BuildContext context) => tleViewViewModel,
        child: Consumer<TleViewViewModel>(builder: (context, value, _) {
          switch (value.tleList.status) {
            case Status.LOADING:
              return const TleShimmer();

            case Status.ERROR:
              return Center(child: Text(value.tleList.message.toString()));
            case Status.COMPLETED:
              return ListView.builder(
                  itemCount: value.tleList.data!.member!.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value.tleList.data!.member![index].name.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(value.tleList.data!.member![index].date
                              .toString()),
                          SizedBox(height: 5),
                          Text(
                            value.tleList.data!.member![index].line1.toString(),
                            style: TextStyle(fontSize: 9),
                          ),
                          Text(
                            value.tleList.data!.member![index].line2.toString(),
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                    );
                  }));
          }
          return Container();
        }),
      ),
    );
  }
}
