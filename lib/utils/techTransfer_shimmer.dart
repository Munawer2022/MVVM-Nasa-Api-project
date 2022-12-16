import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../res/components/shimmer_component.dart';

class TechTransferShimmer extends StatelessWidget {
  const TechTransferShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ShimmerComponent(
              hight: 280,
              width: double.maxFinite,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerComponent(hight: 10, width: 100),
                  SizedBox(
                    height: 15,
                  ),
                  ShimmerComponent(hight: 12, width: 500),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 12, width: 300),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 12, width: 500),
                  SizedBox(
                    height: 15,
                  ),

                  ShimmerComponent(hight: 10, width: 300),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 500),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 300),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 500),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 300),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 500),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 300),
                  SizedBox(
                    height: 7,
                  ),
                  ShimmerComponent(hight: 10, width: 100),

                  // ShimmerComponent(hight: 10, width: 50),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
