import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:solicitud_toner_soporte_app/shared_preferences/preferences.dart';

import '../models/sector_response_model.dart';

class ObtenerData extends ChangeNotifier {
  final url = Uri.http('192.2.21.12:8090', '/api/collections/sector/records',
      {'expand': 'sucursal'});

  List<Sector> listaSectores = [];
  final sector = Preferences.sector;

  ObtenerData() {
    getSectores();
  }

  getSectores() async {
    try {
      final response = await http.get(url);
      final data = SectorResponse.fromJson(response.body);
      listaSectores = data.items;
      print(listaSectores[1].nombre);
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
