import 'package:flutter/material.dart';
import 'package:responsividade/widget/appbar_mobile.dart';
import 'package:responsividade/widget/appbar_web.dart';
import 'package:responsividade/widget/item.dart';

class LojaVirtual extends StatefulWidget {
  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {

  _ajustarVisualizacao(double larguraTela){
    int colunas = 2;
    if(larguraTela <= 600){
      colunas = 2;
    }
    else if(larguraTela <= 960){
      colunas = 4;
    }
    else{
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var largura = constraints.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;
        return Scaffold(
          appBar: largura < 600 ? 
          PreferredSize(child: AppBarMobile(), preferredSize: Size(largura, alturaBarra)) :
          PreferredSize(child: AppBarWeb(), preferredSize: Size(largura, alturaBarra)),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                Item("Ola", "imagens/p1.jpg", "10.00"),
                Item("Ola", "imagens/p2.jpg", "10.00"),
                Item("Ola", "imagens/p3.jpg", "10.00"),
                Item("Ola", "imagens/p4.jpg", "10.00"),
                Item("Ola", "imagens/p5.jpg", "10.00"),
                Item("Ola", "imagens/p6.jpg", "10.00"),
              ],),
              
          ),
        );
      },
    );
  }
}
