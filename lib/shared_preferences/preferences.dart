import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _sector = "Piso 3 Nurse";
  static String _impresoraMarca = "Xerox Phaser";
  static String _impresoraModelo = "3020";

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get sector {
    return _prefs.getString('sector') ?? _sector;
  }

  static set sector(String sector) {
    _sector = sector;
    _prefs.setString('sector', sector);
  }

  static String get impresoraMarca {
    return _prefs.getString('impresoraMarca') ?? _impresoraMarca;
  }

  static set impresoraMarca(String impresora) {
    _impresoraMarca = impresora;
    _prefs.setString('impresoraMarca', impresora);
  }

  static String get impresoraModelo {
    return _prefs.getString('impresoraModelo') ?? _impresoraModelo;
  }

  static set impresoraModelo(String impresora) {
    _impresoraModelo = impresora;
    _prefs.setString('impresoraModelo', impresora);
  }
}
