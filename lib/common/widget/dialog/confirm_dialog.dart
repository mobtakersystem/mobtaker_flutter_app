import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';

class ConfirmDialog {
  static Future<T?> show<T>(
    BuildContext context, {
    required String message,
    VoidCallback? confirmCallBack,
    VoidCallback? cancelCallBack,
    bool useRootNavigator = false,
  }) async {
    final res = await showModalBottomSheet<T>(
      context: context,
      useRootNavigator: useRootNavigator,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (context) => SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40),
                    ),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: useRootNavigator)
                          .pop(true);
                      confirmCallBack?.call();
                    },
                    child: const Text(
                      'تایید',
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40),
                    ),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: useRootNavigator)
                          .pop(false);
                      cancelCallBack?.call();
                    },
                    child: const Text(
                      'انصراف',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
    if (res == null) {
      cancelCallBack?.call();
    }
    return res;
  }
}
