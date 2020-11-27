import 'package:flutter/material.dart';

class Carregando extends StatelessWidget {
  const Carregando({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: CircularProgressIndicator(),
      ),
    );
  }
}
