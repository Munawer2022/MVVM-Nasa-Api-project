import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../res/components/shimmer_component.dart';

class ShimmerHome extends StatelessWidget {
  const ShimmerHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        expandedHeight: 520.0,
        backgroundColor: theme.primaryColor,
      ),
      SliverToBoxAdapter(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ShimmerComponent(hight: 5, width: 50),
            ),
            SizedBox(
              height: 10,
            ),
            ShimmerComponent(hight: 10, width: 89),
            SizedBox(
              height: 20,
            ),
            ShimmerComponent(hight: 10, width: 150),
            SizedBox(
              height: 20,
            ),
            ShimmerComponent(hight: 10, width: 300),
            SizedBox(
              height: 10,
            ),
            ShimmerComponent(hight: 10, width: 300),
            SizedBox(
              height: 10,
            ),
            ShimmerComponent(hight: 10, width: 300),
            SizedBox(
              height: 10,
            ),
            // ShimmerComponent(hight: 7, width: 160),
            // SizedBox(
            //   height: 3,
            // ),
            // ShimmerComponent(hight: 10, width: 300),
            // SizedBox(
            //   height: 5,
            // ),
            // ShimmerComponent(hight: 10, width: 300),
          ],
        ),
      ))
    ]);
  }
}
