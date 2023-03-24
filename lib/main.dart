import 'package:flutter/material.dart';
import 'package:solicitud_toner_soporte_app/provider/obtener_data.dart';
import 'package:solicitud_toner_soporte_app/screen/home_screen.dart';
import 'package:solicitud_toner_soporte_app/screen/settings_screen.dart';
import 'package:solicitud_toner_soporte_app/shared_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Preferences.init();
  runApp(const StateApp());
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ObtenerData(),
        ),
      ],
      child: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'settings': (context) => SettingScreen(),
      },
    );
  }
}
