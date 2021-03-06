import 'package:clone_twitter/layouts/left_layout.dart';
import 'package:clone_twitter/layouts/main_layout.dart';
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

        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!shouldHideLefttSideBar)
                    LeftLayout(shouldHideLeftText: shouldHideLeftText),
                  MainLayout(
                    shouldHideLefttSideBar: shouldHideLefttSideBar,
                  ),
                  if (!shouldHideRightSideBar)
                    Flexible(
                      child: Container(
                        width: 350,
                        child: ListView(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(31, 94, 98, 100),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              height: 400,
                              margin: EdgeInsets.only(bottom: 16),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(31, 94, 98, 100),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              height: 200,
                              margin: EdgeInsets.only(bottom: 16),
                            ),
                            Text(
                              "Conditions d???utilisation Politique de Confidentialit?? Politique relative aux cookies Accessibilit?? Informations sur les publicit??s Plus ?? 2022 Twitter, Inc.",
                              maxLines: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
