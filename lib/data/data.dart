import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionData = [
  {
    "icon": const FaIcon(FontAwesomeIcons.burger),
    "color": Colors.yellow[700],
    "name": "Food",
    "totalamount": "-\$45.00",
    "date": "Today",
  },
  {
    "icon": const FaIcon(FontAwesomeIcons.bagShopping),
    "color": Colors.purple,
    "name": "Shopping",
    "total amount": "-\$235.00",
    "date": "Today",
  },
  {
    "icon": const FaIcon(FontAwesomeIcons.heartCircleCheck),
    "color": Colors.green,
    "name": "Health",
    "total amount": "-\$79.00",
    "date": "Yesterday",
  },
  {
    "icon": const FaIcon(FontAwesomeIcons.plane),
    "color": Colors.blue,
    "name": "Travel",
    "total amount": "-\$350.00",
    "date": "Yesterday",
  },
];
