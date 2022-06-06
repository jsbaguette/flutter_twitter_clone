import 'package:clone_twitter/layouts/left_layout.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool shouldHideLeftText = false;
        bool shouldHideRightSideBar = false;
        bool shouldHideLefttSideBar = false;

        if (constraints.maxWidth < 988) {
          shouldHideRightSideBar = true;
        }

        if (constraints.maxWidth < 1260) {
          shouldHideLeftText = true;
        }

        if (constraints.maxWidth < 601) {
          shouldHideLefttSideBar = true;
        }

        return Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!shouldHideLefttSideBar)
                  LeftLayout(shouldHideLeftText: shouldHideLeftText),
                Flexible(
                  flex: 10,
                  child: Container(
                    width: 600,
                    constraints: BoxConstraints(maxWidth: 600),
                    decoration: shouldHideLefttSideBar
                        ? null
                        : BoxDecoration(
                            border: Border.symmetric(
                              vertical: BorderSide(color: Colors.grey),
                            ),
                          ),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Placeholder(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Placeholder(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Placeholder(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Placeholder(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
