import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LGActionAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onConfirm;
  final bool isDestructiveAction;
  const LGActionAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
    this.isDestructiveAction = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      insetAnimationDuration: const Duration(milliseconds: 0),
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        CupertinoDialogAction(
          isDestructiveAction: isDestructiveAction,
          onPressed: onConfirm,
          child: const Text('Confirm'),
        ),
      ],
    );
  }
}
