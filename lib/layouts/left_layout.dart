import 'package:clone_twitter/providers/mock.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftLayout extends StatelessWidget {
  bool shouldHideLeftText;

  LeftLayout({Key? key, required this.shouldHideLeftText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: shouldHideLeftText ? 75 : 295,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ...navigations.map(
                (e) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: shouldHideLeftText
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: shouldHideLeftText
                            ? EdgeInsets.all(0)
                            : EdgeInsets.only(right: 10),
                        width: 28,
                        child: FaIcon(
                          e.icon,
                          color: Color.fromRGBO(15, 20, 25, 1),
                        ),
                      ),
                      if (!shouldHideLeftText)
                        Text(
                          e.label,
                          style: TextStyle(fontSize: 20),
                        ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                // padding: shouldHideLeftText
                //     ? EdgeInsets.all(0)
                //     : EdgeInsets.only(right: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape:
                        shouldHideLeftText ? CircleBorder() : StadiumBorder(),
                  ),
                  onPressed: () => {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: shouldHideLeftText
                        ? FaIcon(
                            FontAwesomeIcons.feather,
                            color: Colors.white,
                            size: 24,
                          )
                        : Text(
                            "Tweeter",
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  // alignment: Alignment.centerRight,
                  // margin: EdgeInsets.only(right: 16),
                  child: CircleAvatar(backgroundColor: Colors.black),
                ),
                if (!shouldHideLeftText)
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          child: Text(
                            "florent giraud",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Text(
                          "@jsbaguette",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                if (!shouldHideLeftText)
                  Flexible(
                    flex: 2,
                    child: FaIcon(FontAwesomeIcons.ellipsis),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
