import 'package:flutter/material.dart';

class AppBarWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
        "imagens/logo.png",
        fit: BoxFit.contain
      ),
        Expanded(child: Container()),
        IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.shopping_cart_rounded),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
            primary: Colors.white
          ),
          onPressed: (){

          },
          child: Text(
            "Cadastrar"
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.orange,
            primary: Colors.white
          ),
          onPressed: (){

          },
          child: Text(
            "Entrar"
          ),
        ),
          
      ]
      )
    );
  }
}