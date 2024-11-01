import 'package:flutter/material.dart';
import 'package:proyect_v1/constants/colors.dart';

class InfoDesktop extends StatelessWidget {
  const InfoDesktop({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(20.0),
      color: CustomColor.color1, 
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Título principal
                const Text(
                  'Bienvenido',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.color4,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Estamos aquí para ayudar',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.color5,
                  ),
                ),
                const SizedBox(height: 20.0),

                // Lista de opciones con icono y descripción
                for (var i = 0; i < 4; i++) ...[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Icono en cada fila
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: i % 2 == 0 ? CustomColor.color3 : CustomColor.color4, // Alternar colores
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(
                          Icons.info, // Cambia el ícono si es necesario
                          color: Colors.white,
                          size: 32.0,
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      // Texto descriptivo al lado del icono
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Título ${i + 1}',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.color6,
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet sapien in urna malesuada.',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: CustomColor.deepBlue,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: CustomColor.color2,
                    thickness: 1.0,
                    height: 30.0,
                  ),
                ],
              ],
            ),
          ),

          // Sección de información adicional
          const SizedBox(width: 40.0),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: CustomColor.color6.withOpacity(0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Información Adicional',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.color4,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'Más detalles sobre cómo podemos ayudarte con nuestros servicios. Información adicional y soporte.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: CustomColor.deepBlue,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
