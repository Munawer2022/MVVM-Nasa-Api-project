import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:mvvm/data/response/status.dart';

import 'package:provider/provider.dart';

import '../utils/apod_shimmer.dart';
import '../view_model/apod_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AuthViewViewModel authViewViewModel = AuthViewViewModel();

  @override
  void initState() {
    // TODO: implement initState
    authViewViewModel.fetchApodApi();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: ChangeNotifierProvider<AuthViewViewModel>(
        create: (BuildContext context) => authViewViewModel,
        child: Consumer<AuthViewViewModel>(builder: (context, value, _) {
          switch (value.apodList.status) {
            case Status.LOADING:
              return ShimmerHome();

            case Status.ERROR:
              return Center(child: Text(value.apodList.message.toString()));
            case Status.COMPLETED:
              return CustomScrollView(slivers: <Widget>[
                SliverAppBar(
                  actions: [
                    IconButton(
                      // splashRadius: 30,
                      padding: const EdgeInsets.all(30.0),
                      onPressed: () {
                        Get.toNamed(
                          '/all',
                        );
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        size: 36,
                      ),
                    )
                  ],
                  // toolbarHeight: 120,
                  pinned: true,
                  expandedHeight: 520.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      'Astronomy Picture of the Day',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    background: Image.network(
                      value.apodList.data!.hdurl.toString(),
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 5,
                          width: 50,
                          decoration: BoxDecoration(
                            color: theme.primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(value.apodList.data!.date.toString()),
                      SizedBox(
                        height: 10,
                      ),
                      Text(value.apodList.data!.title.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        value.apodList.data!.explanation.toString(),
                      ),
                    ],
                  ),
                ))
              ]);
          }
          return Container();
        }),
      ),
    );
  }
}
