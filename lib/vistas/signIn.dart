// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:prueba/vistas/welcomePage.dart';
import 'package:prueba/widgets/commonWidgets.dart';

class signIn extends StatelessWidget {
  const signIn({Key? key}) : super(key: key);

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
              titleText("Iniciar sesion"),
              const Spacer(),
              SizedBox(
                width: scWidth * 0.7,
                child: subTitleText(
                    "Para disfrutar de todos nuestros servicios, y volverte parte de esta gran familia"),
              ),
              const Spacer(),
              Image(
                image: const AssetImage('assets/1.png'),
                height: scHeight * 0.15,
              ),
              const Spacer(),
              const SizedBox(
                width: 180,
                child: TextField(
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Usuario",
                  ),
                ),
              ),
              const SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Contraseña",
                  ),
                ),
              ),
              const Spacer(),
              largeButton(() {}, const Color(0xff185359), 'INICIAR SESION'),
              const Text("\n"),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LogIn();
                    },
                  ),
                );
              }, const Color(0xffF2BE22), 'VOLVER'),
              const Text("\n"),
            ],
          ),
        ),
      ),
    );
  }
}
