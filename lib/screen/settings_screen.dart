import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solicitud_toner_soporte_app/models/sector_response_model.dart';
import 'package:solicitud_toner_soporte_app/shared_preferences/preferences.dart';

import '../provider/obtener_data.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final sectorProvider = Provider.of<ObtenerData>(context);
    final listaNombresSectores = sectorProvider.listaSectores;

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text("Sector"),
                  DropdownButton(
                    items: listaNombresSectores
                        .map((e) => DropdownMenuItem(
                              child: Text(e.nombre),
                              value: e.nombre,
                            ))
                        .toList(),
                    value: Preferences.sector,
                    onChanged: (value) {
                      Preferences.sector = value!;
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Marca de Impresora"),
                  DropdownButton(
                    items: listaNombresSectores
                        .map((e) => DropdownMenuItem(
                              child: Text(e.nombre),
                              value: e.nombre,
                            ))
                        .toList(),
                    value: Preferences.sector,
                    onChanged: (value) {
                      Preferences.sector = value!;
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Modelo"),
                  DropdownButton(
                    items: listaNombresSectores
                        .map((e) => DropdownMenuItem(
                              child: Text(e.nombre),
                              value: e.nombre,
                            ))
                        .toList(),
                    value: Preferences.sector,
                    onChanged: (value) {
                      Preferences.sector = value!;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
