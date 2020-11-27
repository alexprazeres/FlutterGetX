import 'package:app/Model/Classes/Imagem.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app/Ajudas/Utils.dart';
import 'package:app/Model/Provider/Api.dart';
import 'package:app/Model/Repository/GetRepository.dart';
import 'package:app/Model/Repository/PostRepository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerInicial extends GetxController {
  final GetRepository getRepository = GetRepository(api: Api(dio: Dio()));
  final PostRepository postRepository = PostRepository(api: Api(dio: Dio()));

  //Variaveis//
  RxString mensagemInicial =
      "Aguarde, estou processando informações de marte...".obs;
  RxBool buscando = false.obs;
  List<Imagem> listaImagens = [];
  //RxList listaImagens = [].obs;

  abrirTela(Widget tela) {
    Get.to(tela);
  }

  iniciar() {
    this.buscando.value = true;
    getRepository.buscarImagens().then((data) {
      Iterable dec = (data);
      this.listaImagens = dec.map((x) => Imagem.fromJson(x)).toList();

      //Definir como finalizado a busca//
      this.mensagemInicial.value = "Pronto ! Bem-Vindo!";
      this.buscando.value = false;
    });
  }
}
