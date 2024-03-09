import 'package:flutter/material.dart';

class Navigate {
  final BuildContext context;

  const Navigate(this.context);

  void go({required Widget to}) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => to));
  }

  void pop() {
    Navigator.of(context).pop();
  }
}
