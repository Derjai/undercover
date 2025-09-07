import 'package:flutter/material.dart';
import 'package:undercover/ui/views/players_menu.dart';
import 'package:undercover/ui/views/rules_menu.dart';
import 'package:undercover/ui/widgets/clickable_card_with_icon.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Undercover')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                clickableCardWithIcon(
                  data: 'Reglas',
                  icon: Icons.rule,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(child: RulesMenu()),
                    );
                  },
                ),
                clickableCardWithIcon(
                  data: 'Jugadores',
                  icon: Icons.group,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(child: PlayersMenu()),
                    );
                  },
                ),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text('Confirmar')),
          ],
        ),
      ),
    );
  }
}
