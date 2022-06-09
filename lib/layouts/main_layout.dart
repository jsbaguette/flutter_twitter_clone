import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainLayout extends StatelessWidget {
  bool shouldHideLefttSideBar;

  MainLayout({Key? key, required this.shouldHideLefttSideBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: shouldHideLefttSideBar
            ? null
            : BoxDecoration(
                border: Border.symmetric(
                  vertical: BorderSide(color: Colors.grey),
                ),
              ),
        constraints: BoxConstraints(maxWidth: 600),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 32,
                        height: 32,
                        child: CircleAvatar(backgroundColor: Colors.black),
                      ),
                      Text("Accueil"),
                    ],
                  ),
                  FaIcon(FontAwesomeIcons.info, size: 22),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // margin: shouldHideLefttSideBar
                //     ? EdgeInsets.all(0)
                //     : EdgeInsets.only(right: 16),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey)),
                      ),
                      child: Center(
                        child: Text(
                          "Show 438 tweets",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    for (int i = 0; i < 7; i++) ...[
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                        decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(backgroundColor: Colors.black),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "florent giraud",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 4),
                                                  child: Text(
                                                    "@jsbaguette",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 4),
                                                  child: Text(
                                                    "- 2h",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: FaIcon(
                                              FontAwesomeIcons.ellipsis,
                                              size: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        "This is super open ended, but what are you all currently struggling with? Doesn't have to be code related. We're more than our jobs.",
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          20), // Image border
                                      child: Image.asset(
                                        "assets/images/bg.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.comment,
                                            color: Colors.grey,
                                            size: 18,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.retweet,
                                            color: Colors.grey,
                                            size: 18,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.heart,
                                            color: Colors.grey,
                                            size: 18,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.arrowUpFromBracket,
                                            color: Colors.grey,
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
