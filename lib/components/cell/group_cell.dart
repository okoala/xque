import 'package:flutter/cupertino.dart';

import 'package:yuque/config/theme.dart';
import 'package:yuque/components/cell/item_cell.dart';

class GroupCell extends StatefulWidget {
  GroupCell({ this.group, this.onTap });

  final List<Map<String, dynamic>> group;
  final Function onTap;

  @override
  GroupCellState createState() => GroupCellState();
}

class GroupCellState extends State<GroupCell> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [];

    for (int i = 0; i < widget.group.length; i++) {
      final dynamic item = widget.group[i];
      bool isLastItem;

      if (i == widget.group.length - 1) {
        isLastItem = true;
      }

      items.add(
        Container(
          child: ItemCell(
            title: item['title'],
            header: item['header'],
            icon: item['icon'],
            iconColor: item['iconColor'],
            footer: item['footer'],
            isSingle: false,
            isLastItem: isLastItem,
            onTap: () {
              widget.onTap(item, i);
            }
          )
        )
      );
    }

    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: YQColor.grey5, width: 0.5),
          bottom: BorderSide(color: YQColor.grey5, width: 0.5),
        ),
      ),
      child: Column(
        children: items,
      ),
    );
  }
}