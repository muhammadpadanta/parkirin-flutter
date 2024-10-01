import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class GreetingRow extends StatelessWidget {
  final String greeting;
  final String username;

  const GreetingRow({
    super.key,
    required this.greeting,
    required this.username,
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
            "$greeting, $username 👋",
            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Transform.scale(
          scale: 1.7,
          child: SizedBox(
            width: 100,
            height: 50,
            child: RiveAnimation.asset(
              'assets/animations/truck_animation.riv',
              fit: BoxFit.cover,
              controllers: [SimpleAnimation('idle')],
            ),
          ),
        ),
      ],
    );
  }
}
