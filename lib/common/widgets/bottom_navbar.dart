import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final cardTheme = theme.cardTheme;
    final shadowColor = theme.shadowColor;

    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: cardTheme.color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: selectedIndex,
            selectedItemColor: colorScheme.primary,
            unselectedItemColor: textTheme.bodyLarge?.color,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: onItemTapped,
            selectedLabelStyle: textTheme.bodyMedium?.copyWith(fontSize: 14),
            unselectedLabelStyle: textTheme.bodyMedium?.copyWith(fontSize: 14),
            selectedIconTheme: const IconThemeData(size: 28),
            unselectedIconTheme: const IconThemeData(size: 28),
            items: _buildNavBarItems(colorScheme.primary),
          ),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildNavBarItems(Color selectedColor) {
    final items = [
      (Icons.home, 'Home'),
      (Icons.receipt, 'History'),
      (Icons.qr_code_scanner, 'Scan'),
      (Icons.person, 'Account'),
      (Icons.settings, 'Settings'),
    ];

    return items.asMap().entries.map((entry) {
      final index = entry.key;
      final (icon, label) = entry.value;
      return BottomNavigationBarItem(
        icon: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (selectedIndex == index)
              Container(
                width: 35,
                height: 5,
                margin: const EdgeInsets.only(bottom: 4),
                decoration: BoxDecoration(
                  color: selectedColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            Icon(icon),
          ],
        ),
        label: label,
      );
    }).toList();
  }
}
