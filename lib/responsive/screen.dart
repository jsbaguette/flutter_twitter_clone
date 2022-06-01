import 'package:clone_twitter/responsive/largeLayout.dart';
// import 'package:clone_twitter/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // String size = whichSize(constraints);
        // Map<String, dynamic> renders = {
        //   "smallSize": SmallLayout,
        //   "mediumSize": LargeLayout,
        //   "largeSize": LargeLayout,
        // };

        return const LargeLayout();
      },
    );
  }
}
