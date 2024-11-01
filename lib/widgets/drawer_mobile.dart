import 'package:flutter/material.dart';
import 'package:proyect_v1/constants/colors.dart';
import 'package:proyect_v1/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.color6,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 20,
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close,
                  color: CustomColor.deepBlue,
                  ),
                ),
              ),
            ),
            for(int i = 0 ; i < navIcons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30.0,
                ),
              titleTextStyle: const TextStyle(
                color: CustomColor.deepBlue,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: (){},
              leading: Icon(navIcons [i],color: CustomColor.deepBlue,),
              title: Text(navTitles [i]),
            )
          ],
        ),
      );
  }
}