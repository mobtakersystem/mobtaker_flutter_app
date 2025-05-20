import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';

class TitlePinWidget extends StatelessWidget {
  final String title;

  const TitlePinWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Text(
          title,
          style: context.textTheme.titleMedium,
        ),
      ),
    );
  }
}
