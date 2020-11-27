import 'package:app/Controller/ControllerInicial.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class ControllerMenu extends GetxController {
  ControllerMenu();

  //Como o ControllerInicial já está instanciando ele faz um FIND pra buscar ele e instanciar ele aqui localmente, dentro de outro controller, é magico !
  ControllerInicial controllerInicial = Get.find();
  RxString nome = "NOME DO MENU É MEUS OVOS".obs;

  abrirLink(String link) async {
    String url = "$link";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  compartilharApp() {
    Share.share(
        'Olá, olha que legal, só app bacana.!\nhttps://play.google.com/store/apps/developer?id=AVA+Tecnologia');
  }

  alterarVariavel() {
    controllerInicial.mensagemInicial.value = "Ei doido, mudou aqui !";
  }
}
