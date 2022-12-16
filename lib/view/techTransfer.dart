import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';

import '../data/response/status.dart';
import '../utils/techTransfer_shimmer.dart';
import '../view_model/techTransfer_view_model.dart';

class TechTransfer extends StatefulWidget {
  const TechTransfer({Key? key}) : super(key: key);
  TechTransferState createState() => TechTransferState();
}

class TechTransferState extends State<TechTransfer> {
  TechTransferViewViewModel techTransferViewViewModel =
      TechTransferViewViewModel();

  @override
  void initState() {
    // TODO: implement initState
    techTransferViewViewModel.fetchTechTransferApi();

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
          'TechTransfer List',
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
      body: ChangeNotifierProvider<TechTransferViewViewModel>(
        create: (BuildContext context) => techTransferViewViewModel,
        child:
            Consumer<TechTransferViewViewModel>(builder: (context, value, _) {
          switch (value.techTransferList.status) {
            case Status.LOADING:
              return const TechTransferShimmer();

            case Status.ERROR:
              return Center(
                  child: Text(value.techTransferList.message.toString()));
            case Status.COMPLETED:
              return ListView.builder(
                  itemCount: value.techTransferList.data!.results.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Image.network(value
                            .techTransferList.data!.results[index]
                            .elementAt(10)
                            .toString()),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(value.techTransferList.data!.results[index]
                                  .elementAt(1)
                                  .toString()),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  value.techTransferList.data!.results[index]
                                      .elementAt(2)
                                      .toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text(value.techTransferList.data!.results[index]
                                  .elementAt(3)
                                  .toString()),
                            ],
                          ),
                        ),
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
