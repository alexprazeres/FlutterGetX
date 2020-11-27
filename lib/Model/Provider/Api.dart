import 'dart:convert';

import 'package:app/Ajudas/Utils.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

class Api {
  final Dio dio;

  Api({@required this.dio});

  buscarImagens() async {
    Response response;
    try {
      var url = Utils.caminhoAPI("photos");
      response = await dio.get(url);
      return response.data;
    } catch (e) {
      //Utils.aviso(context, 'Opa!','Erro ao tratar os dados de retorno.\nErro:' + e.toString());
      print(e);
      return null;
    }
  }
}
