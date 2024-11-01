import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:proyect_v1/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  void _openMap() async {
    const url = 'https://datacrim.inei.gob.pe/panel/mapa';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'No se pudo abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screnWidth = screenSize.width;
    final screnHeight = screenSize.height;
    return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 30.0,
                ),
                height: screnHeight,
                constraints: BoxConstraints(
                  minHeight: 560.0, 
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //avatar
                    ShaderMask(
                      shaderCallback: (bounds){
                        return LinearGradient(
                          colors: [
                            CustomColor.color5.withOpacity(0.5),
                            CustomColor.color5.withOpacity(0.5),
                          ]).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child:
                       Image.asset('assets/mapa_calor.png', width: screnWidth,)
                       ),

                    const SizedBox(height: 3.0),
                    //info
                    const Text('Bienvenido estamos aqui para ayuadar',
                    style: TextStyle(
                      fontSize: 24.0,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.color2,
                    ),
                    ),

                    //button
                  SizedBox(
                    width: 180.0,
                    child: ElevatedButton(
                      onPressed: _openMap,
                      child: const Text('Ver Mapa')),
                  )
                  ],
                ),
              );
  }
}