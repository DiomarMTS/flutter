import 'package:flutter/material.dart';
import 'package:proyect_v1/constants/colors.dart';
import 'package:proyect_v1/styles/style.dart';
import 'package:proyect_v1/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap, });
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50.0,
            margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
            decoration: KHeaderDecoration,
            child: Row(
              children: [
                SiteLogo(
                  onTap: onLogoTap,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onMenuTap,
                 icon: const Icon(Icons.menu, color: CustomColor.deepBlue,),
                 ),
                 SizedBox(width: 15,),
              ],
            ),
          );
  }
}