import 'package:flutter/material.dart';

class PlayersMenu extends StatelessWidget {
  const PlayersMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jugadores')),
      body: Center(child: Text('Contenido de los Jugadores')),
    );
  }
}
