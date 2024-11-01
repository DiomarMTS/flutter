import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 40, // Ajusta el ancho al tamaño deseado
        height: 40, // Ajusta el alto al tamaño deseado
        child: Image.asset(
          'assets/logo.png', // Ruta de la imagen
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}