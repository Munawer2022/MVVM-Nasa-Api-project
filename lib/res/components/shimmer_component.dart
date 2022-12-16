import 'package:flutter/material.dart';
import 'package:mvvm/res/color.dart';

class ShimmerComponent extends StatelessWidget {
  final hight;
  final width;

  const ShimmerComponent({
    Key? key,
    required this.hight,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
