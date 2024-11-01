import 'package:flutter/material.dart';
import 'package:proyect_v1/constants/colors.dart';
import 'package:proyect_v1/constants/nav_items.dart';
import 'package:proyect_v1/styles/style.dart';
import 'package:proyect_v1/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 60.0,
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            width: double.maxFinite,
            decoration: KHeaderDecoration,
            child: Row(
              children: [
              SiteLogo(onTap: (){
                
              },),
               const Spacer(),
                for(int i = 0 ; i < navTitles.length ; i++ )
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                    onPressed: (){},
                     child: Text(navTitles[i],
                     style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.deepBlue,
                     ),),
                  ),
                ),
              ],
            ),
          );
  }
}