import 'package:appli_paf/Model/data_provider.dart';
import 'package:appli_paf/View/home.dart';
import 'package:appli_paf/View/themes.dart';
import 'package:appli_paf/custom_widgets/bouton.dart';
import 'package:appli_paf/custom_widgets/dispositif_box.dart';
import 'package:appli_paf/custom_widgets/formation_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class FormationsParTheme extends StatelessWidget {
  static const String id = '/formations_part_theme';

  const FormationsParTheme({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<DataProvider>(context);
    var screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return PopScope(
      canPop: false,
      child: DefaultTabController(
        length: 2, // nombre d'onglets
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 120,
            automaticallyImplyLeading: false,
            title: Row(
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
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      provider.selectedTheme.toUpperCase(),
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
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: "Accès par thématiques de formation"),
                Tab(text: "Accès à la liste formations"),
              ],
            ),
          ),
          body: Stack(
            children: [
              // Image de fond
              Positioned.fill(
                child: Image.asset(
                  "assets/images/fondjaune.jpg",
                  fit: BoxFit.cover,
                ),
              ),

              // Contenu des onglets
              TabBarView(
                children: [
                  // Onglet 1 : Dispositifs
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double containerWidth = constraints.maxWidth * 0.7;
                        double cardWidth = 260;
                        double cardHeight = 150;

                        int crossAxisCount = (containerWidth / cardWidth)
                            .floor();
                        if (crossAxisCount > 3) crossAxisCount = 3;
                        if (crossAxisCount < 1) crossAxisCount = 1;

                        if (screenWidth < 500) {
                          return ListView.builder(
                            itemCount: provider.dispoByTheme.length,
                            itemBuilder: (context, index) {
                              final dispo = provider.dispoByTheme[index];
                              final titreDispo = dispo.modules.isNotEmpty
                                  ? dispo.modules[0].dispoTitre.toUpperCase()
                                  : "DISPOSITIF SANS MODULE";

                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                child: DispositifBox(
                                  titre: titreDispo,
                                  nombreModules: dispo.modules.length,
                                  onTap: () {
                                    print(
                                      "Ouverture du dispositif : $titreDispo",
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        } else {
                          return Center(
                            child: SizedBox(
                              width: containerWidth,
                              child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: crossAxisCount,
                                      mainAxisSpacing: 16,
                                      crossAxisSpacing: 16,
                                      childAspectRatio: cardWidth / cardHeight,
                                    ),
                                itemCount: provider.dispoByTheme.length,
                                itemBuilder: (context, index) {
                                  final dispo = provider.dispoByTheme[index];
                                  final titreDispo = dispo.modules.isNotEmpty
                                      ? dispo.modules[0].dispoTitre
                                            .toUpperCase()
                                      : "DISPOSITIF SANS MODULE";

                                  return DispositifBox(
                                    titre: titreDispo,
                                    nombreModules: dispo.modules.length,
                                    onTap: () {
                                      print(
                                        "Ouverture du dispositif : $titreDispo",
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),

                  // Onglet 2 : Modules (exemple de réutilisation de Grid/List)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView(
                      children: provider.modules.map((module) {
                        final session = provider.getSessionForModule(
                          module.code,
                        );
                        return FormationBox(module: module, session: session);
                      }).toList(),
                    ),
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
