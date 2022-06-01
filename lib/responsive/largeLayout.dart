import 'package:badges/badges.dart';
import 'package:clone_twitter/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationElement {
  final IconData icon;
  final String label;
  final bool showBadge;
  final bool hideText;

  NavigationElement(this.icon, this.label, this.hideText,
      [this.showBadge = false]);
}

class LargeLayout extends StatelessWidget {
  const LargeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);

    String device = whichSize(media);
    bool isMedium = device == "mediumSize";

    List<NavigationElement> navigations = [
      NavigationElement(FontAwesomeIcons.house, "Accueil", isMedium, true),
      NavigationElement(FontAwesomeIcons.hashtag, "Explorer", isMedium, false),
      NavigationElement(
          FontAwesomeIcons.bell, "Notifications", isMedium, false),
      NavigationElement(FontAwesomeIcons.envelope, "Messages", isMedium, false),
      NavigationElement(FontAwesomeIcons.bookmark, "Signets", isMedium, false),
      NavigationElement(FontAwesomeIcons.fileLines, "Liste", isMedium, false),
      NavigationElement(FontAwesomeIcons.user, "Profile", isMedium, false),
      NavigationElement(FontAwesomeIcons.ellipsis, "Plus", isMedium, false),
    ];

    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: isMedium ? 88 : 275,
                  padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            height: 50,
                            width: 50,
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.blue,
                              size: 28,
                            ),
                          ),
                          ...navigations.map(
                            (e) => Container(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Badge(
                                    showBadge: e.showBadge,
                                    badgeColor: Colors.blue,
                                    position: BadgePosition(top: -6, end: -2),
                                    child: SizedBox(
                                      width: 28,
                                      child: FaIcon(
                                        e.icon,
                                        color: Color.fromRGBO(
                                          15,
                                          20,
                                          25,
                                          1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (e.hideText == false)
                                    Container(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        e.label,
                                        style: TextStyle(
                                          color: Color.fromRGBO(15, 20, 25, 1),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: isMedium
                                    ? CircleBorder()
                                    : RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(9999.0),
                                      ),
                              ),
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(30.0),
                              // ),
                              // color: Colors.blue,
                              // textColor: Colors.white,
                              onPressed: () => {},
                              child: Container(
                                height: 52,
                                child: Center(
                                  child: isMedium
                                      ? FaIcon(
                                          FontAwesomeIcons.feather,
                                          color: Colors.white,
                                          size: 24,
                                        )
                                      : Text(
                                          "Tweeter",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Placeholder(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 990,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 600,
                        child: Placeholder(),
                      ),
                      Container(
                        width: 350,
                        child: Placeholder(),
                      )
                    ],
                  ),
                )
              ],
            ),
            // child: ListView(
            //   children: [
            //     const Text("body"),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
