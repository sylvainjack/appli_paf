import 'package:appli_paf/Model/data_provider.dart';
import 'package:appli_paf/View/formations_par_theme.dart';
import 'package:appli_paf/View/home.dart';
import 'package:appli_paf/custom_widgets/bouton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Themes extends StatelessWidget {
  static const String id = '/themes';

  const Themes({super.key});

  Widget buildDisciplinaryBox(
    double screenWidth,
    DataProvider data, {
    bool isMobile = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            "LES FORMATIONS DISCIPLINAIRES",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              fontSize: screenWidth < 800 ? 20 : 26,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          isMobile
              ? SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: data.themesDisc.length,
                    itemBuilder: (context, index) {
                      return simpleButton(data.themesDisc[index], () {
                        data.setTheme(data.themesDisc[index]);
                        data.DispoByThemeList();
                        Navigator.pushNamed(context, FormationsParTheme.id);
                      });
                    },
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: data.themesDisc.length,
                    itemBuilder: (context, index) {
                      return simpleButton(data.themesDisc[index], () {
                        data.setTheme(data.themesDisc[index]);
                        data.DispoByThemeList();
                        Navigator.pushNamed(context, FormationsParTheme.id);
                      });
                    },
                  ),
                ),
        ],
      ),
    );
  }

  Widget buildTransversalBox(
    double screenWidth,
    DataProvider data, {
    bool isMobile = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            "LES FORMATIONS TRANSVERSALES",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[900],
              fontSize: screenWidth < 800 ? 20 : 26,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          isMobile
              ? SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: data.themesTransv.length,
                    itemBuilder: (context, index) {
                      return simpleButton(
                        data.themesTransv[index],
                        () => Navigator.pushNamed(context, Home.id),
                      );
                    },
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: data.themesTransv.length,
                    itemBuilder: (context, index) {
                      return simpleButton(
                        data.themesTransv[index],
                        () => Navigator.pushNamed(context, Home.id),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DataProvider>(context);
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    // Hauteur du bloc central : minimum 900, sinon 80% de la hauteur écran
    double mainBoxHeight = screenHeight < 900 ? 900 : screenHeight * 0.8;

    // Largeur max pour contenir les 2 boîtes
    double contentWidth = screenWidth * (2 / 3);

    bool isMobile = screenWidth < 800;

    return Consumer<DataProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                // Boutons gauche
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.home, color: Colors.white),
                      onPressed: () {
                        Navigator.pushNamed(context, Home.id);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),

                // Espace flexible pour le titre
                Expanded(
                  child: Text(
                    'Les thèmes de formations 2025-2026'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile ? 18 : 28,
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

                // Bouton droite
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    /* ouvrir menu */
                  },
                ),
              ],
            ),
            backgroundColor: Colors.blue[900],
            elevation: 0,
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
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 100), // espace sous l’appBar
                      // Adaptation layout desktop/mobile
                      isMobile
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildDisciplinaryBox(
                                  screenWidth,
                                  data,
                                  isMobile: true,
                                ),
                                buildTransversalBox(
                                  screenWidth,
                                  data,
                                  isMobile: true,
                                ),
                              ],
                            )
                          : SizedBox(
                              height: mainBoxHeight,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: contentWidth,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: buildDisciplinaryBox(
                                            screenWidth,
                                            data,
                                          ),
                                        ),
                                        Expanded(
                                          child: buildTransversalBox(
                                            screenWidth,
                                            data,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
      },
    );
  }
}
