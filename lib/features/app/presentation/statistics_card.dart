import 'package:flutter/material.dart';
import 'package:lumify_notes/configurations/configurations.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({super.key, this.color, required this.title, required this.data, this.textColor});

  final Color? color;

  final Color? textColor;

  final String title;

  final String data;

  @override
  Widget build(BuildContext context) => Card(
        color: color ?? const Color(0xffFFFBFE),
        child: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Text(
                data,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: textColor,
                    ),
              ),
            ],
          ),
        ),
      );
}
