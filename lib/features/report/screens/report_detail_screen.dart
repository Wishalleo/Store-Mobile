import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ReportDetailScreen extends StatelessWidget {
  const ReportDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Background sedikit abu-abu agar "kertas struk" (putih) terlihat menonjol/pop-up
    return Scaffold(
      backgroundColor: WColors.lightGrey,
      appBar: AppBar(
        backgroundColor: WColors.lightGrey,
        elevation: 0,
        title: Text(
          'Detail Transaksi',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Iconsax.arrow_left_2),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.share)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(WSizes.defaultSpace),
        child: Column(
          children: [
            // --- BAGIAN UTAMA: KARTU STRUK ---
            WRoundedContainer(
              backgroundColor: WColors.white,
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  // 1. HEADER STRUK (Status & Total)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 24,
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Iconsax.tick_circle,
                          color: Colors.green,
                          size: 64,
                        ),
                        const SizedBox(height: WSizes.sm),
                        Text(
                          'Pembayaran Berhasil',
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium!.apply(color: Colors.green),
                        ),
                        const SizedBox(height: WSizes.spaceBtwItems),
                        Text(
                          'Rp 54.000',
                          style: Theme.of(context).textTheme.displaySmall!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: WColors.black,
                              ),
                        ),
                        const SizedBox(height: WSizes.sm),
                        Text(
                          '28 Des 2025, 14:30 • #TRX-9921',
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall!.apply(color: WColors.darkGrey),
                        ),
                      ],
                    ),
                  ),

                  // 2. DAFTAR ITEM (List Belanja)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        _buildOrderItem(
                          context,
                          'Kopi Susu Gula Aren',
                          '2',
                          '18.000',
                          '36.000',
                        ),
                        const SizedBox(height: 12),
                        _buildOrderItem(
                          context,
                          'Roti Bakar Coklat',
                          '1',
                          '18.000',
                          '18.000',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // 3. SEPARATOR (Garis Putus-putus a la Struk)
                  const _DashedDivider(),

                  const SizedBox(height: 24),

                  // 4. RINCIAN PEMBAYARAN
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        _buildSummaryRow(context, 'Subtotal', 'Rp 54.000'),
                        const SizedBox(height: 8),
                        _buildSummaryRow(context, 'Pajak (0%)', 'Rp 0'),
                        const SizedBox(height: 8),
                        _buildSummaryRow(
                          context,
                          'Diskon',
                          '- Rp 0',
                          color: Colors.green,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Divider(),
                        ),
                        _buildSummaryRow(
                          context,
                          'Total Bayar',
                          'Rp 54.000',
                          isBold: true,
                        ),
                        const SizedBox(height: 8),
                        _buildSummaryRow(
                          context,
                          'Metode Bayar',
                          'Tunai / Cash',
                        ),
                        const SizedBox(height: 8),
                        _buildSummaryRow(context, 'Diterima', 'Rp 60.000'),
                        const SizedBox(height: 8),
                        _buildSummaryRow(context, 'Kembalian', 'Rp 6.000'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),

            const SizedBox(height: WSizes.spaceBtwSections),

            // --- TOMBOL AKSI ---
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Iconsax.printer),
                label: const Text('Cetak Struk / Print'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: WColors.primary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
            const SizedBox(height: WSizes.sm),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Kirim Struk via WhatsApp'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- WIDGET HELPERS (Agar kode utama bersih) ---

  Widget _buildOrderItem(
    BuildContext context,
    String name,
    String qty,
    String price,
    String total,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Lingkaran kecil jumlah item
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: WColors.lightGrey,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text('${qty}x', style: Theme.of(context).textTheme.labelSmall),
        ),
        const SizedBox(width: 12),
        // Detail Nama & Harga Satuan
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
              ),
              Text(
                '@ Rp $price',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: WColors.darkGrey),
              ),
            ],
          ),
        ),
        // Total Harga per Item
        Text('Rp $total', style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }

  Widget _buildSummaryRow(
    BuildContext context,
    String label,
    String value, {
    bool isBold = false,
    Color? color,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isBold
              ? Theme.of(context).textTheme.titleMedium
              : Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(color: WColors.darkGrey),
        ),
        Text(
          value,
          style: isBold
              ? Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: WColors.primary)
              : Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(color: color ?? WColors.black),
        ),
      ],
    );
  }
}

// Widget Khusus untuk Garis Putus-putus
class _DashedDivider extends StatelessWidget {
  const _DashedDivider();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 8.0;
        const dashHeight = 1.0;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
