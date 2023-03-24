import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solicitud_toner_soporte_app/provider/obtener_data.dart';
import 'package:solicitud_toner_soporte_app/shared_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          onPressed: () => Navigator.pushNamed(context, 'settings'),
          icon: Icon(Icons.settings),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
                "Hola, ${Preferences.sector} está por solicitar un Toner para la impresora : ${Preferences.impresoraMarca} ${Preferences.impresoraModelo}"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Solicitar Toner"),
            ),
          ],
        ),
      ),
    );
  }
}
