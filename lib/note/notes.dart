import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/custom_button.dart';


class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          bottom:PreferredSize(preferredSize: Size.fromHeight(1), child: Divider()),
        actions: [
          IconButton(onPressed: (){},icon:Icon(Icons.link)),
          IconButton(onPressed: (){},icon:Icon(Icons.share)),
          IconButton(onPressed: (){},icon:Icon(Icons.more_vert)),
        ],
     ) ,
      body:Padding(
        padding: EdgeInsetsGeometry.all(15),
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ) ,
              minLines: 1,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'title',
                border:InputBorder.none,
              ),
            ),
            Expanded(
            child:TextFormField(
              minLines: 50,
              maxLines: 50,
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: 'Describe about your notes',
              ),
            ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:const EdgeInsets.all(15.0),
        child:Column(
        mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
            title: 'save changes',
            ),
        ],
      ),
      ),
    );
  }
}
