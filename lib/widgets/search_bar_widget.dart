import 'package:flutter/material.dart';
import 'package:hypermart_app/core/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          // Search Icon
          Icon(Icons.search, color: AppColors.primaryGreen),
          const SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search Anything...',
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              style: const TextStyle(color: Colors.black),
              onTapOutside: (event) {},
            ),
          ),
          const SizedBox(width: 10.0),

          // Voice Searching
          const Icon(Icons.mic, color: AppColors.primaryGreen),
        ],
      ),
    );
  }
}


