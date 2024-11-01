import 'package:flutter/material.dart';
import 'package:proyect_v1/constants/colors.dart';

class InfoMobile extends StatelessWidget {
  const InfoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screnWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      color: CustomColor.color1, // Color de fondo general
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título principal
          const Text(
            'Bienvenido',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: CustomColor.color4,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Estamos aquí para ayudar',
            style: TextStyle(
              fontSize: 24.0,
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
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: i % 2 == 0 ? CustomColor.color3 : CustomColor.color4, // Alternar colores
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(
                    Icons.info, // Aquí puedes cambiar el icono según sea necesario
                    color: Colors.white,
                    size: 28.0,
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
                          fontSize: 18.0,
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

          // Caja de información adicional en la parte inferior
          const SizedBox(height: 20.0),
          Container(
            color: CustomColor.color6.withOpacity(0.2),
            width: screnWidth,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Información Adicional',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.color4,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Más detalles sobre cómo podemos ayudarte con nuestros servicios.',
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
    );
  }
}
