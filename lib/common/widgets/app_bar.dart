import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String title;
  final List<Widget>? actions;
  final bool pinned;
  final double toolbarHeight;

  const CustomSliverAppBar({
    super.key,
    required this.title,
    this.actions,
    this.pinned = true,
    this.toolbarHeight = kToolbarHeight + 10,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.5),
        child: Text(
          title,
          style:
              theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      actions: actions,
      pinned: pinned,
      toolbarHeight: toolbarHeight,
    );
  }
}
