import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback? onActionPressed;

  const TextRow({
    super.key,
    required this.title,
    this.actionText = "See more",
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (onActionPressed != null)
          TextButton(
            onPressed: onActionPressed,
            style: TextButton.styleFrom(
              foregroundColor: theme.colorScheme.primary,
            ),
            child: Text(
              "$actionText ➜",
              style:
                  textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
      ],
    );
  }
}
