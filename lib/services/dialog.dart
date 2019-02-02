import 'package:flutter/cupertino.dart';

void showDialog({BuildContext context, Widget child}) {
  showCupertinoDialog<String>(
    context: context,
    builder: (BuildContext context) => child,
  );
}

void showTokenErrorDialog(context) {
  showDialog(
    context: context,
    child: CupertinoAlertDialog(
      title: Text('Token 无效'),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text('确定'),
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context, 'Cancel');
          },
        ),
      ],
    ),
  );
}