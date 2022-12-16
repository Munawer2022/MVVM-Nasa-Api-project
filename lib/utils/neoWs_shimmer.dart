import 'package:flutter/material.dart';

import '../res/components/shimmer_component.dart';

class NeoWsShimmer extends StatelessWidget {
  const NeoWsShimmer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: ListView.builder(
          itemCount: 19,
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
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShimmerComponent(width: 100, hight: 12),
                          ShimmerComponent(width: 140, hight: 12),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShimmerComponent(width: 150, hight: 9),
                          ShimmerComponent(width: 80, hight: 9),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShimmerComponent(width: 150, hight: 9),
                          ShimmerComponent(width: 80, hight: 9),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
