import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyect_v1/constants/colors.dart';
import 'package:proyect_v1/constants/size.dart';
import 'package:proyect_v1/widgets/Header_mobile.dart';
import 'package:proyect_v1/widgets/drawer_mobile.dart';
import 'package:proyect_v1/widgets/header_desktop.dart';
import 'package:proyect_v1/widgets/info_desktop.dart';
import 'package:proyect_v1/widgets/info_mobile.dart';
import 'package:proyect_v1/widgets/main_desktop.dart';
import 'package:proyect_v1/widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.color5,
          endDrawer: constraints.maxWidth >= KMinDesktopWidth ? null: const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
        
              // Inicio
              if(constraints.maxWidth >= KMinDesktopWidth)
              const HeaderDesktop()
              else 
              HeaderMobile(
                onLogoTap: (){},
                onMenuTap: (){
                  scaffoldKey.currentState?.openEndDrawer();
                },
                ),

              if(constraints.maxWidth >= KMinDesktopWidth)
              const MainDesktop() 
              else
              const MainMobile(),

              if(constraints.maxWidth >= KMinDesktopWidth)
              const InfoDesktop() 
              else
              const InfoMobile(),
              
              // Informacion
              Container(
                height: 500,
                width: double.maxFinite,
                color: CustomColor.color5,
              ), 
        
              // Contactenos
              Container(
                height: 500,
                width: double.maxFinite,
                color:  CustomColor.color4,
              ),
        
              // ver mapa
              Container(
                height: 500,
                width: double.maxFinite,
                color:  CustomColor.color3,
              ),
        
              // Reportar Caso
              Container(
                height: 500,
                width: double.maxFinite,
                color:  CustomColor.color2,
              ),
        
              // Seguir caso
              Container(
                height: 500,
                width: double.maxFinite,
                color:  CustomColor.color1,
              ),
              // Login
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.red,
              )
            ],
          ),
        );
      }
    );
  }
}