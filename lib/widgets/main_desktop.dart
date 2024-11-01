import 'package:flutter/material.dart';
import 'package:proyect_v1/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

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
    
    return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                height: screenSize.height/1.2,
                constraints: BoxConstraints(minHeight: 300.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Bienvenido estamos aqui para ayuadar', 
                        style: TextStyle(
                            fontSize: 30.0,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.color2,

                          ),
                        ),
                        ElevatedButton(
                      onPressed: _openMap, 
                      child: const Text('Ver Mapa'),
                      ),
                      ],
                    ),
                    Image.asset('mapa_calor.png',
                    width: screnWidth / 2,
                    ),
                  ],
                ),
              );
              
  }
}