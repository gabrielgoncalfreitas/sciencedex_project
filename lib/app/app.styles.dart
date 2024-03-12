import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static double _getScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double _getScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static EdgeInsets buttonsPadding = const EdgeInsets.only(
    left: 20,
    right: 20,
    top: kIsWeb ? 11 : 8,
    bottom: kIsWeb ? 11 : 8,
  );

  static EdgeInsets getNomeDoPeriodoTextFieldPadding(BuildContext context) {
    double width = _getScreenWidth(context);

    return EdgeInsets.only(
      left: 8,
      right: 8,
      top: width >= 768 ? 14 : 11,
      bottom: width >= 768 ? 14 : 11,
    );
  }

  static BoxConstraints? getHomePageTopWidgetApelidoContainerConstraints(BuildContext context) {
    double width = _getScreenWidth(context);

    if (width <= 321) {
      return const BoxConstraints(
        maxHeight: 47,
        minHeight: 47,
        maxWidth: 120,
        minWidth: 120,
      );
    } else if (width <= 376) {
      return const BoxConstraints(
        maxHeight: 47,
        minHeight: 47,
        maxWidth: 160,
        minWidth: 160,
      );
    }

    return const BoxConstraints(
      maxHeight: 47,
      minHeight: 47,
      maxWidth: 200,
      minWidth: 200,
    );
  }

  static BoxConstraints getTextFieldsConstraints(BuildContext context) {
    double width = _getScreenWidth(context);

    return BoxConstraints(
      maxWidth: width >= 768 ? 123 : 103,
      maxHeight: 29,
    );
  }

  static double listContainerHeight(BuildContext context) {
    double height = _getScreenHeight(context);

    if (height >= 850) {
      return 378;
    } else if (height >= 700) {
      return 250;
    }

    return 200;
  }

  static double calculateFontSize({required BuildContext context, required double currentSize}) {
    double width = _getScreenWidth(context);

    if (kIsWeb && width >= 768) {
      return currentSize + 2;
    }

    return currentSize;
  }

  static double? alertDialogWidth(BuildContext context) {
    double width = _getScreenWidth(context);

    if (width >= 768) {
      return 300;
    }

    return null;
  }
}
