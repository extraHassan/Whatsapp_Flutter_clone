import 'package:flutter/material.dart';

import 'menu_items.dart';

class AppBarIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton(
            itemBuilder: (BuildContext ctx) {
              return ItemsEnum.choices.map((String choice) {
                return PopupMenuItem(
                  child: Text(choice),
                  value: choice,
                );
              }).toList();
            },
            onSelected: chosenItem,
          )
      ],
    );
  }

    void chosenItem(String item) {
    switch (item) {
      case ItemsEnum.newbrod:
        print(ItemsEnum.newbrod);
        break;
      case ItemsEnum.newgrp:
        print(ItemsEnum.newgrp);
        break;
      case ItemsEnum.settings:
        print(ItemsEnum.settings);
        break;
      case ItemsEnum.stmsg:
        print(ItemsEnum.stmsg);
        break;
      case ItemsEnum.whatsweb:
        print(ItemsEnum.whatsweb);
        break;

      default:
        break;
    }
  }
}