import 'package:app/Ajudas/Animator.dart';
import 'package:app/Ajudas/Carregando.dart';
import 'package:app/Ajudas/Utils.dart';
import 'package:app/Controller/ControllerInicial.dart';
import 'package:app/View/Inicial/Menu.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Inicial extends StatefulWidget {
  Inicial({Key key}) : super(key: key);

  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  //Instanciando o ControllerInicial///
  final ControllerInicial c = Get.put(
    ControllerInicial(),
  );

  @override
  void initState() {
    super.initState();

    c.iniciar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text('O Pai ta ON'),
      ),
      backgroundColor: Utils.corAzul,
      extendBodyBehindAppBar: false,
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '${c.mensagemInicial}',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            (c.buscando.value)
                ? Carregando()
                : Column(
                    children: [
                      WidgetANimator(
                        Lottie.asset('assets/anim/ola.json', width: 250),
                      ),
                      WidgetANimator(
                        Container(
                          width: Get.size.width,
                          height: 250,
                          child: Swiper(
                            itemBuilder: (BuildContext context, int index) {
                              return new Image.network(
                                  //USEI UMA URL DIRETA AQUI PRA EXIBIR IMAGENS REAIS, MAS O CERTO SERIA DE ACORDO COM O QUE RETORNA DA API,
                                  //QUE NO CASO É O CÓDIGO COMENTADO Abaixo:
                                  //c.listaImagens[index].thumbnailUrl,
                                  "https://source.unsplash.com/random/800x60$index",
                                  // O INDEX dentro da url é pra alterar o tamanho de acordo com o index e trazer uma imagem diferente
                                  fit: BoxFit.fill, loadingBuilder:
                                      (BuildContext context, Widget child,
                                          ImageChunkEvent loadingProgress) {
                                return (loadingProgress == null)
                                    ? child
                                    : Center(
                                        child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.green),
                                      ));
                              });
                            },
                            itemCount: 10,
                            pagination: new SwiperPagination(),
                            control: new SwiperControl(),
                          ),
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
