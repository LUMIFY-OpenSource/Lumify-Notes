import 'package:cached_network_image/cached_network_image.dart';
import 'package:lumify_notes/configurations/configurations.dart';
import 'package:flutter/material.dart';

class AlertsCard extends StatelessWidget {
  const AlertsCard({
    super.key,
    required this.alertType,
    required this.alertIcon,
    required this.product,
    required this.productUrl,
    this.alertIconColor = Colors.red,
  });

  final String alertType;
  final String product;
  final String productUrl;
  final IconData alertIcon;
  final Color alertIconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          kPadding * 1.5,
        ),
        side: const BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(kPadding * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      alertType,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: kPadding),
                    Icon(
                      alertIcon,
                      size: 20,
                      color: alertIconColor,
                    ),
                  ],
                ),
                Text(
                  product,
                  style: theme.textTheme.labelLarge?.copyWith(),
                ),
              ],
            ),
          ),
          const SizedBox(width: kPadding),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(kPadding * 1.5),
              bottomRight: Radius.circular(kPadding * 1.5),
            ),
            child: CachedNetworkImage(
              imageUrl: productUrl,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
