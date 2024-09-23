import 'package:flutter/material.dart';
import 'package:mpm/common/utils/error_utilst.dart';
import 'package:toastification/toastification.dart';

extension ContextUtils on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;

  Color get onPrimaryColor => Theme.of(this).colorScheme.onPrimary;

  Color get onButtonColor => Colors.white;

  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

  // Color get secondaryLightColor => AppColors.secondaryLight;

  Color get tertiaryColor => Theme.of(this).colorScheme.tertiary;

  Color get errorColor => Theme.of(this).colorScheme.error;

  // Color get warningColor => AppColors.tertiary;

  Color get surfaceTint => Theme.of(this).colorScheme.surfaceTint;

  // Color get shadowColor => AppColors.secondary.withOpacity(0.1);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  void showErrorMessage(Object error) {
    toastification.dismissAll(delayForAnimation: false);
    toastification.show(
      context: this,
      type: ToastificationType.error,
      style: ToastificationStyle.minimal,
      icon: const Icon(Icons.warning),
      autoCloseDuration: const Duration(seconds: 4),
      title: Text(
        ErrorUtils.transformExceptionToMessage(error),
      ),
    );
  }

  void showSuccessMessage(String message) {
    toastification.dismissAll(delayForAnimation: false);
    toastification.show(
      context: this,
      type: ToastificationType.success,
      style: ToastificationStyle.minimal,
      icon: const Icon(
        Icons.check_circle_outline,
        textDirection: TextDirection.ltr,
      ),
      autoCloseDuration: const Duration(seconds: 4),
      title: Text(
        message,
      ),
    );
  }

  Future<dynamic> push(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));

  popAllAndPush(Widget page) => Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page),
        (route) => false,
      );

  pushReplacement(Widget page) => Navigator.of(this).pushReplacement(
        MaterialPageRoute(builder: (context) => page),
      );
}
