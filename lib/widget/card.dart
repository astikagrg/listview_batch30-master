import 'package:flutter/material.dart';
import 'package:listview_batch30/common/snackbar_widget.dart';

Widget displaycard(
  String title,
  BuildContext context,
  Function() delete,
) {
  return GestureDetector(
    onTap: () {
      showSnackBar(context, '1 tap');
    },
    onDoubleTap: () {
      delete();
    },
    child: SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        color: Colors.purpleAccent,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    ),
  );
}
