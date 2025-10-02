import 'package:appli_paf/Model/data_provider.dart';
import 'package:appli_paf/View/home.dart';
import 'package:appli_paf/custom_widgets/bouton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Themes extends StatelessWidget {
  static const String id = '/themes';

  const Themes({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DataProvider>(context);

    return Consumer<DataProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          // appBar: AppBar(
          //   automaticallyImplyLeading: false,
          //   title: const Text(
          //     'Les thèmes de formations 2025-2026',
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),
          //   ),
          //   centerTitle: true,
          //   leading: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       IconButton(
          //         icon: const Icon(Icons.home, color: Colors.white),
          //         onPressed: () {
          //           Navigator.pushNamed(context, Home.id);
          //         },
          //       ),
          //       IconButton(
          //         icon: const Icon(Icons.arrow_back, color: Colors.white),
          //         onPressed: () {
          //           Navigator.pop(context);
          //         },
          //       ),
          //     ],
          //   ),
          //   actions: [
          //     IconButton(
          //       icon: const Icon(Icons.menu, color: Colors.white),
          //       onPressed: () {
          //         // ouvrir menu
          //       },
          //     ),
          //   ],
          //   flexibleSpace: Container(
          //     decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: [Colors.blueAccent, Colors.green],
          //         begin: Alignment.topLeft,
          //         end: Alignment.bottomRight,
          //       ),
          //     ),
          //   ),
          // ),
          extendBodyBehindAppBar:
              true, // permet à l'image de passer sous l'appBar
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'Les thèmes de formations 2025-2026',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 6,
                    color: Colors.black54,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors
                .transparent, // transparent pour laisser voir l’image derrière
            elevation: 0, // pas d’ombre grise par défaut
            leading: Row(
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
            actions: [
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  // ouvrir menu
                },
              ),
            ],
          ),

          body: LayoutBuilder(
            builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 600;

              return SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/8830.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Color.fromARGB(200, 255, 255, 255),
                        BlendMode.dstATop,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Conteneur principal avec 2 colonnes
                        SizedBox(height: 250),
                        SizedBox(
                          height: 600,
                          child: Row(
                            children: [
                              Expanded(flex: 1, child: SizedBox()),

                              // Zone disciplinaire
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100], // bleu pastel
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "LES FORMATIONS DISCIPLINAIRES",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 10),
                                      Expanded(
                                        child: ListView.builder(
                                          cacheExtent: 50,
                                          scrollDirection: Axis.vertical,
                                          itemCount: data.themesDisc.length,
                                          itemBuilder: (context, index) {
                                            return simpleButton(
                                              data.themesDisc[index],
                                              () => Navigator.pushNamed(
                                                context,
                                                Home.id,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Expanded(flex: 1, child: SizedBox()),

                              // Zone transversale
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.green[100], // vert pastel
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "LES FORMATIONS TRANSVERSALES",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 10),
                                      Expanded(
                                        child: ListView.builder(
                                          cacheExtent: 50,
                                          scrollDirection: Axis.vertical,
                                          itemCount: data.themesTransv.length,
                                          itemBuilder: (context, index) {
                                            return simpleButton(
                                              data.themesTransv[index],
                                              () => Navigator.pushNamed(
                                                context,
                                                Home.id,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Expanded(flex: 1, child: SizedBox()),
                            ],
                          ),
                        ),

                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
