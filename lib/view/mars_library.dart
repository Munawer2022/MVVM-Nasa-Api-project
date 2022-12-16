import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:mvvm/data/response/status.dart';
import 'package:mvvm/utils/mars_shimmer.dart';
import 'package:mvvm/view_model/mars_library_view_model.dart';
import 'package:provider/provider.dart';

class MarsLibrary extends StatefulWidget {
  const MarsLibrary({Key? key}) : super(key: key);
  _MarsLibraryState createState() => _MarsLibraryState();
}

class _MarsLibraryState extends State<MarsLibrary> {
  MarsLibraryViewViewModel marsLibraryViewViewModel =
      MarsLibraryViewViewModel();

  @override
  void initState() {
    // TODO: implement initState
    marsLibraryViewViewModel.fetchMarsLibraryApi();

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
      body: ChangeNotifierProvider<MarsLibraryViewViewModel>(
        create: (BuildContext context) => marsLibraryViewViewModel,
        child: Consumer<MarsLibraryViewViewModel>(builder: (context, value, _) {
          switch (value.marsLibraryList.status) {
            case Status.LOADING:
              return const MarsShimmer();

            case Status.ERROR:
              return Center(
                  child: Text(value.marsLibraryList.message.toString()));
            case Status.COMPLETED:
              return ListView.builder(
                  itemCount:
                      value.marsLibraryList.data!.collection!.items!.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value.marsLibraryList.data!.collection!.items![index]
                              .links!.length
                              .toString(),
                        )
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
