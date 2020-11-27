import 'package:app/Ajudas/Utils.dart';
import 'package:app/Controller/ControllerMenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final ControllerMenu c = Get.put(ControllerMenu());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Container(
        color: Utils.corAmarelo,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Icon(
                Icons.car_repair,
                size: 40,
              ),
              decoration: BoxDecoration(
                color: Utils.corAmarelo,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.rate_review,
                  color: Utils.corAzul,
                ),
                title: Text(
                  'Meus Aplicativos',
                  style: TextStyle(color: Utils.corAzul),
                ),
                onTap: () {
                  c.abrirLink(
                      "https://play.google.com/store/apps/developer?id=AVA+Tecnologia");
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.share,
                  color: Utils.corAzul,
                ),
                title: Text(
                  'Compartilhar Aplicativo',
                  style: TextStyle(color: Utils.corAzul),
                ),
                onTap: () {
                  c.compartilharApp();
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.share,
                  color: Utils.corAzul,
                ),
                title: Text(
                  'Clica pra mudar variavel do Controller Inicial',
                  style: TextStyle(color: Utils.corAzul),
                ),
                onTap: () {
                  c.alterarVariavel();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
