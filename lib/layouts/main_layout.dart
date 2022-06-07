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
      flex: 10,
      child: Container(
        margin: shouldHideLefttSideBar
            ? EdgeInsets.all(0)
            : EdgeInsets.only(right: 16),
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
            Container(
              padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: CircleAvatar(backgroundColor: Colors.black),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "florent giraud",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        "@jsbaguette",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        "- 2h",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: FaIcon(FontAwesomeIcons.ellipsis),
                              ),
                            ),
                          ],
                        ),
                        Text(
                            "This is super open ended, but what are you all currently struggling with? Doesn't have to be code related. We're more than our jobs."),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(28)),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/bg.jpg",
                                fit: BoxFit.cover,
                              ),
                              // Image.network(
                              //   "https://picsum.photos/250?image=9",
                              //   // "https://unsplash.com/photos/NRQV-hBF10M",
                              //   fit: BoxFit.cover,
                              // ),
                              Container(
                                padding: EdgeInsets.all(16),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Title"),
                                    Text("subtitle"),
                                    Text("small description"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                  // Container(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Expanded(
                  //         flex: 8,
                  //         child: Container(
                  //           alignment: Alignment.centerLeft,
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 "florent giraud",
                  //                 style: TextStyle(fontSize: 15),
                  //               ),
                  //               Padding(
                  //                 padding: EdgeInsets.symmetric(horizontal: 4),
                  //                 child: Text(
                  //                   "@jsbaguette",
                  //                   style: TextStyle(fontSize: 15),
                  //                 ),
                  //               ),
                  //               Padding(
                  //                 padding: EdgeInsets.symmetric(horizontal: 4),
                  //                 child: Text(
                  //                   "- 2h",
                  //                   style: TextStyle(fontSize: 15),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Flexible(
                  //         child: Align(
                  //           alignment: Alignment.centerRight,
                  //           child: FaIcon(FontAwesomeIcons.ellipsis),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
