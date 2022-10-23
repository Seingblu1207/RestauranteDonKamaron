// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:prueba/vistas/signIn.dart';
import 'package:prueba/widgets/commonWidgets.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scHeight = MediaQuery.of(context).size.height;
    double scWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff0B2B40),
      body: Center(
          child: Container(
        width: scWidth * 0.8,
        height: scHeight * 0.9,
        decoration: BoxDecoration(
          color: const Color(0xff30A5BF),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            titleText("Bienvenido"),
            const Spacer(flex: 1),
            SizedBox(
              width: scWidth * 0.7,
              child: subTitleText(
                  "Restaurantes Don Kamarón, mariscos de la mejor calidad para su paladar"),
            ),
            const Spacer(flex: 1),
            Image.network(
              'https://donkamaronlzc.com/wp-content/uploads/cropped-Don-Kamaron-Logo_1.png',
              scale: 1,
              height: scHeight * 0.17,
            ),
            const Spacer(flex: 4),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const signIn();
                  },
                ),
              );
            }, const Color(0xff185359), "INICIAR SESIÓN"),
            const Text("\n"),
            largeButton(() {}, const Color(0xffF2BE22), "REGISTRARSE"),
            //const Spacer(flex: 2),
            const Text("\n"),
          ],
        ),
      )),
    );
  }
}
