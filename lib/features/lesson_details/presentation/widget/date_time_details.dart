// widgets/date_time_details.dart
import 'package:flutter/material.dart';
import 'package:stem_ui/constant/colors.dart';
import 'package:stem_ui/constant/strings.dart';

class DateTimeDetails extends StatelessWidget {
  final String date;
  final String time;

  const DateTimeDetails({
    super.key,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _buildLabelValueColumn(AppStrings.date, date),
            const SizedBox(width: 32),
            _buildLabelValueColumn(AppStrings.time, time),
          ],
        ),
      ],
    );
  }

  Widget _buildLabelValueColumn(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppColors.textGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}