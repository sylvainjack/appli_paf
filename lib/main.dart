import 'package:appli_paf/View/formations_par_theme.dart';
import 'package:appli_paf/View/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Model/data_provider.dart'; // ton provider
import 'View/home.dart'; // ton écran Home
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(null);
  runApp(
    ChangeNotifierProvider(create: (_) => DataProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, provider, child) {
        // Tant que l'initialisation n'est pas terminée, on affiche un loader
        if (!provider.isInitialized) {
          //   // Lancement de l'init si pas encore démarrée
          provider.startInitialization();
        }

        // Une fois initialisé, on peut lancer l'app
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Portail Formation",
          theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
          initialRoute: Home.id,
          routes: {
            Home.id: (context) => const Home(),
            //  Themes.id: (context) => const Themes(),
            FormationsParTheme.id: (context) => const FormationsParTheme(),
          },
        );
      },
    );
  }
}
