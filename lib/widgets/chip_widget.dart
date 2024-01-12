import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipWidget extends StatelessWidget {
  late String label;
  late IconData avatar;
  ChipWidget({
    required this.avatar,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Chip(
        backgroundColor: Colors.white,
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        labelPadding: const EdgeInsets.symmetric(horizontal: 10),
        avatar: Icon(
          avatar,
          size: 16,
          color: Colors.grey,
        ),
        side: BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
