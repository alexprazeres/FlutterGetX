import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

class Utils {
  static String caminhoServidor = "https://jsonplaceholder.typicode.com";

  static Color corAzul = Color.fromRGBO(15, 46, 82, 1);
  static Color corVerde = Color.fromRGBO(2, 126, 64, 1);
  static Color corAmarelo = Color.fromRGBO(255, 182, 6, 1);

  static String caminhoAPI(String chamada) {
    return "$caminhoServidor/$chamada";
  }

  static String formataReais(double valor) {
    var f = NumberFormat(
      '###.00',
      'pt_BR',
    );
    return "R\$" + f.format(valor);
  }

  static gravarDados(chave, valor) {
    GetStorage box = GetStorage();
    box.write("$chave", "$valor");
  }

  static formataData(String data, String formato) {
    //foramto = "dd-MM-yyyy"
    String dateFormate = DateFormat(formato).format(DateTime.parse(data));
    return dateFormate;
  }

  static String lerDados(chave) {
    GetStorage box = GetStorage();
    return box.read("$chave");
  }
}
