import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationElement {
  final IconData icon;
  final String label;
  // final bool showBadge;

  NavigationElement(this.icon, this.label);
}

List<NavigationElement> navigations = [
  NavigationElement(FontAwesomeIcons.house, "Accueil"),
  NavigationElement(FontAwesomeIcons.hashtag, "Explorer"),
  NavigationElement(FontAwesomeIcons.bell, "Notifications"),
  NavigationElement(FontAwesomeIcons.envelope, "Messages"),
  NavigationElement(FontAwesomeIcons.bookmark, "Signets"),
  NavigationElement(FontAwesomeIcons.fileLines, "Liste"),
  NavigationElement(FontAwesomeIcons.user, "Profile"),
  NavigationElement(FontAwesomeIcons.ellipsis, "Plus"),
];
