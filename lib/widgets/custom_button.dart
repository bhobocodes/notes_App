
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool? isBOrderType;

  const CustomButton({
    super.key,
    required this.title,
    this.isBOrderType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: isBOrderType == true
            ? null
            : AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10),
        border: isBOrderType == true
            ? Border.all(
          color: AppColors.primaryColor,
          width: 2,
        )
            : null,
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
