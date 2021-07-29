import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  String descricao;
  String preco;
  String imagem;

  Item(this.descricao,this.imagem,this.preco);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(this.imagem),
            flex: 8
          ),
          Expanded(
            child: Text(this.descricao),
            flex: 1
          ),
          Expanded(
            child: Text(this.preco),
            flex: 1
          ),
        ],
      ),
    );
  }
}