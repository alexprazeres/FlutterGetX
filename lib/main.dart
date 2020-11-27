import 'package:app/Ajudas/Utils.dart';
import 'package:app/View/Inicial/Inicial.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Aplicativo Base',
        theme: ThemeData(
          primaryColor: Utils.corVerde,
          primarySwatch: Colors.green,
          //brightness: Brightness.dark,
          accentColor: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Iniciando());
  }
}

///Classe iniciando // Bom pra verificar se ja passou intro ou tela de autenticação//
///
class Iniciando extends StatefulWidget {
  Iniciando({Key key}) : super(key: key);

  @override
  _IniciandoState createState() => _IniciandoState();
}

class _IniciandoState extends State<Iniciando> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      verificar();
    });
  }

  void verificar() async {
    // Bom pra verificar se ja passou intro ou autenticacao//
    // String passouintro = Utils.lerDados("intro");
    // if (passouintro != null) {
    //   Get.to(Inicial());
    // } else {
    //   Get.to(Intro());
    // }

    Get.offAll(Inicial());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
