import 'package:flutter/cupertino.dart';

import 'package:yuque/components/cell/item_cell.dart';
import 'package:yuque/config/theme.dart';

class SingleCell extends StatefulWidget {
  SingleCell({ this.title, this.header, this.footer });

  final String title;
  final Widget header;
  final Widget footer;

  @override
  SingleCellState createState() => SingleCellState();
}

class SingleCellState extends State<SingleCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: YQColor.grey5, width: 0.5),
          bottom: BorderSide(color: YQColor.grey5, width: 0.5),
        ),
      ),
      child: ItemCell(title: widget.title, header: widget.header, footer: widget.footer, isSingle: true,),
    );
  }
}