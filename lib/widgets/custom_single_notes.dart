import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomSingleNotes extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  const CustomSingleNotes({super.key, required this.title, required this.description, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black.withOpacity(.2)),
      ),
      child: ListTile(
        horizontalTitleGap: 0,
        titleAlignment: ListTileTitleAlignment.top,
        leading: Container(
          height: 10,
          width: 13,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.backgroundColor,
          ),
        ),
        title: Text(title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description,
              maxLines: 1,
              overflow:TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 11,
                  ),
                ),
                InkWell(onTap: () {}, child: Icon(Icons.delete)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
