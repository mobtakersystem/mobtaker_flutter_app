import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';

class SwitchWithTitleWidget extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String title;

  const SwitchWithTitleWidget({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      borderRadius: BorderRadius.circular(16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: context.textTheme.bodySmall,
          ),
          const SizedBox(
            width: 8,
          ),
          Transform.scale(
            scale: 0.5,
            alignment: AlignmentDirectional.centerStart,
            child: Switch(
              value: value,
              onChanged: onChanged,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ],
      ),
    );
  }
}
