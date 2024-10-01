import 'package:flutter/material.dart';
import 'package:parkirin/common/widgets/app_bar.dart';
import 'package:parkirin/common/widgets/point_card.dart';
import 'package:parkirin/common/widgets/ticket_card.dart';
import 'package:parkirin/common/widgets/greeting_row.dart';
import 'package:parkirin/common/widgets/text_row.dart';

class DriverHomePage extends StatelessWidget {
  const DriverHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: "Parkirin",
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications, size: 33),
                onPressed: () {
                  // Handle notification action
                },
                padding: const EdgeInsets.only(right: 16.0),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(21.0).copyWith(bottom: 96),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const GreetingRow(
                  greeting: "Selamat Pagi",
                  username: "Padanta",
                ),
                const SizedBox(height: 6),
                const PointsCard(
                  points: 120,
                  title: "Parkirin Poin Terkumpul",
                  subtitle: "*kumpulkan 2000 poin untuk 1x parkir gratis!",
                ),
                const SizedBox(height: 40),
                TextRow(
                  title: "Terbaru",
                  actionText: "Lihat selengkapnya",
                  onActionPressed: () {
                    // Handle see more action
                  },
                ),
                const SizedBox(height: 4),
                TicketCard(
                  ticketNumber: "12",
                  ticketInfo: [
                    TicketInfo(
                      label: "Lokasi parkir:",
                      value:
                          "Jl. Ahmad Yani, Tlk. Tering, Kec. Batam Kota, Kota Batam, Kepulauan Riau 29461",
                    ),
                    TicketInfo(
                      label: "Tanggal parkir:",
                      value: "Rabu, 11 September 2024",
                    ),
                    TicketInfo(
                      label: "Tarif parkir:",
                      value: "Rp2.000,00",
                    ),
                    TicketInfo(
                      label: "Nama Jukir:",
                      value: "Jarwo Kuwat",
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
