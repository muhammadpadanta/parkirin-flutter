import 'package:flutter/material.dart';

class PointsCard extends StatelessWidget {
  final int points;
  final String title;
  final String subtitle;
  final Color? backgroundColor;
  final Color? textColor;

  const PointsCard({
    super.key,
    required this.points,
    this.title = "Points Collected",
    this.subtitle = "Collect more points for rewards!",
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final cardColor = backgroundColor ?? colorScheme.primary;
    final cardTextColor = textColor ?? colorScheme.onPrimary;

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: textTheme.titleMedium?.copyWith(color: cardTextColor)),
            const SizedBox(height: 4),
            Text(
              "$points Points",
              style: textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: cardTextColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: textTheme.bodyMedium?.copyWith(color: cardTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
