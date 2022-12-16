import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../res/components/shimmer_component.dart';

class TleShimmer extends StatelessWidget {
  const TleShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerComponent(hight: 12, width: 150),
              SizedBox(
                height: 10,
              ),
              ShimmerComponent(hight: 10, width: 250),
              SizedBox(
                height: 10,
              ),
              ShimmerComponent(hight: 10, width: 350),
              SizedBox(
                height: 5,
              ),
              ShimmerComponent(hight: 10, width: 350),
            ],
          ),
        );
      },
    );
  }
}
