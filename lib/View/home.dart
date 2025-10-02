import 'package:appli_paf/Model/data_provider.dart';
import 'package:appli_paf/View/themes.dart';
import 'package:appli_paf/custom_widgets/bouton.dart';
import 'package:appli_paf/custom_widgets/formation_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  static const String id = '/home';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DataProvider>(context);
    var screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    // Largeur max de la boîte "ACCEDER AU PAF"
    double pafBoxWidth = isMobile ? double.infinity : screenWidth / 3;

    return Consumer<DataProvider>(
      builder: (context, provider, child) {
        if (!provider.isInitialized) {
          provider.startInitialization();
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    child: Image.asset("assets/images/acad.png"),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'SE FORMER AVEC L\'EAFC',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: isMobile ? 18 : 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: const [
                        Shadow(
                          blurRadius: 6,
                          color: Colors.black54,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  CircularProgressIndicator(color: Colors.blue[900]),
                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              toolbarHeight: 150,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      margin: const EdgeInsets.only(left: 90),
                      child: Text(
                        'SE FORMER AVEC L\'EAFC',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: isMobile ? 18 : 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: const [
                            Shadow(
                              blurRadius: 6,
                              color: Colors.black54,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      // ouvrir menu
                    },
                  ),
                ],
              ),
            ),
            body: Stack(
              children: [
                // Image de fond
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/accueil.jpg",
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeat,
                  ),
                ),

                // Contenu
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 100), // espace sous l’AppBar
                        // Carrousel horizontal
                        SizedBox(
                          height: 200,
                          child: Consumer<DataProvider>(
                            builder: (context, provider, child) {
                              return ListView(
                                scrollDirection: Axis.horizontal,
                                children: provider.modules.map((module) {
                                  // Récupère la session associée au module
                                  final session = provider.getSessionForModule(
                                    module.code,
                                  );
                                  return FormationBox(
                                    module: module,
                                    session: session,
                                  );
                                }).toList(),
                              );
                            },
                          ),
                        ),

                        const SizedBox(height: 40),

                        // Boîte "ACCEDER AU PAF" limitée à 1/3 de l'écran
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: pafBoxWidth,
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ACCEDER AU PAF',
                                  style: TextStyle(
                                    fontSize: isMobile ? 20 : 32,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[900],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                // Wrap gère automatiquement le passage à la ligne
                                Wrap(
                                  spacing: 20,
                                  runSpacing: 10,
                                  children: [
                                    simpleButton(
                                      'Par thème',
                                      () => Navigator.pushNamed(
                                        context,
                                        Themes.id,
                                      ),
                                    ),
                                    simpleButton(
                                      'Par date',
                                      () => Navigator.pushNamed(
                                        context,
                                        Themes.id,
                                      ),
                                    ),
                                    simpleButton(
                                      'Moteur de recherche',
                                      () => Navigator.pushNamed(
                                        context,
                                        Themes.id,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
