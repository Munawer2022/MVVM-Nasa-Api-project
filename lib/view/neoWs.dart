import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:get/get.dart';
import '../data/response/status.dart';
import '../utils/neoWs_shimmer.dart';
import '../view_model/neoWs_view_model.dart';

class NeoWs extends StatefulWidget {
  const NeoWs({Key? key}) : super(key: key);
  @override
  _NeoWstate createState() => _NeoWstate();
}

class _NeoWstate extends State<NeoWs> {
  NeoWsViewViewModel neoWsViewViewModel = NeoWsViewViewModel();

  @override
  void initState() {
    // TODO: implement initState
    neoWsViewViewModel.fetchNeoWsApi();

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
        toolbarHeight: 170,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'images/assets/ssd_banner.png',
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          // borderRadius: BorderRadius.circular(50),
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ChangeNotifierProvider<NeoWsViewViewModel>(
        create: (BuildContext context) => neoWsViewViewModel,
        child: Consumer<NeoWsViewViewModel>(builder: (context, value, _) {
          switch (value.neoWsList.status) {
            case Status.LOADING:
              return NeoWsShimmer();

            case Status.ERROR:
              return Center(child: Text(value.neoWsList.message.toString()));
            case Status.COMPLETED:
              return ListView.builder(
                  itemCount: value.neoWsList.data!.nearEarthObjects!.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        width: double.maxFinite,
                        height: 90,
                        color: theme.selectedRowColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Astroid Name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                      value.neoWsList.data!
                                          .nearEarthObjects![index].name
                                          .toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('First Observation Date'),
                                  Text(value
                                      .neoWsList
                                      .data!
                                      .nearEarthObjects![index]
                                      .orbitalData!
                                      .firstObservationDate
                                      .toString()),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Last Observation Date'),
                                  Text(value
                                      .neoWsList
                                      .data!
                                      .nearEarthObjects![index]
                                      .orbitalData!
                                      .lastObservationDate
                                      .toString()),
                                ],
                              ),
                            ],
                          ),
                        ),
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
