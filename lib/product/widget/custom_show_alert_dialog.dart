import 'package:flutter/material.dart';

class ShowAlertDialog extends StatelessWidget {
  final String? alertText;
  final String? cancelText;
  final String? acceptText;
  final String? tittleText;
  final void Function()? cancelButton;
  final void Function()? acceptButton;

  const ShowAlertDialog(
      {Key? key,
      this.alertText,
      this.cancelText,
      this.acceptText,
      this.cancelButton,
      this.acceptButton,
      this.tittleText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(tittleText ?? ''),
      content: Text(alertText ?? ''),
      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: cancelButton, child: Text(cancelText ?? '')),
            TextButton(onPressed: acceptButton, child: Text(acceptText ?? '')),
          ],
        )
      ],
    );
  }
}
