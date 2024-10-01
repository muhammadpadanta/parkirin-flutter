import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  final String ticketNumber;
  final List<TicketInfo> ticketInfo;

  const TicketCard({
    super.key,
    required this.ticketNumber,
    required this.ticketInfo,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ticket #$ticketNumber",
              style:
                  textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...ticketInfo.map((info) => _buildTicketInfo(info, textTheme)),
          ],
        ),
      ),
    );
  }

  Widget _buildTicketInfo(TicketInfo info, TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            info.label,
            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            info.value,
            style: textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class TicketInfo {
  final String label;
  final String value;

  TicketInfo({required this.label, required this.value});
}
