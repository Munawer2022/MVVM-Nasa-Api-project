import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../res/components/shimmer_component.dart';

class MarsShimmer extends StatelessWidget {
  const MarsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ShimmerComponent(
              hight: 470,
              width: double.maxFinite,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerComponent(hight: 15, width: 250),
                  SizedBox(
                    height: 15,
                  ),
                  ShimmerComponent(hight: 10, width: 150),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 150),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 100),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 50),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
