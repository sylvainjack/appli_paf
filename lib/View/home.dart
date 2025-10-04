import 'package:appli_paf/Model/data_provider.dart';
import 'package:appli_paf/View/formations_par_theme.dart';
import 'package:appli_paf/View/themes.dart';
import 'package:appli_paf/custom_widgets/bouton.dart';
import 'package:appli_paf/custom_widgets/formation_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  static const String id = '/home';

  const Home({super.key});

  // Bloc "À la une" responsive
  Widget moduleGrid(DataProvider provider, double screenWidth, List list) {
    bool isMobile = screenWidth < 600; // seuil pour petit écran

    if (isMobile) {
      // Sur petit écran : ListView verticale
      return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: list.length,
        shrinkWrap: true,
        physics:
            const NeverScrollableScrollPhysics(), // si dans SingleChildScrollView
        itemBuilder: (context, index) {
          final module = list.elementAt(index);
          final session = provider.getSessionForModule(module.code);

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: FormationBox(module: module, session: session),
          );
        },
      );
    } else {
      return Wrap(
        spacing: 16, // espace horizontal entre les cartes
        runSpacing: 16, // espace vertical quand ça revient à la ligne
        children: list.map((module) {
          final session = provider.getSessionForModule(module.code);
          return FormationBox(module: module, session: session);
        }).toList(),
      );
    }
  }

  Widget themeBox(
    String? titre,
    List? liste,
    Color? color,
    double screenWidth,
    DataProvider data, {
    bool isMobile = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            titre!.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: screenWidth < 800 ? 20 : 26,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500,
                childAspectRatio: 6,
              ),
              padding: EdgeInsets.zero,
              itemCount: liste!.length,
              itemBuilder: (context, index) {
                return simpleButton(liste[index], () {
                  data.setTheme(liste[index]);
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

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DataProvider>(context);
    var screenWidth = MediaQuery.of(context).size.width;
    final TextEditingController _controller = TextEditingController();
    bool isMobile = screenWidth < 600;

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
          return DefaultTabController(
            length: 4,
            child: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                toolbarHeight: 150,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Row(
                  children: [
                    Builder(
                      builder: (context) {
                        return Container(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: const Icon(
                              Icons.more_vert_rounded,
                              color: Colors.white,
                              size: 50,
                            ),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(18),
                        margin: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
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
                            Text(
                              'ENSEIGNANTS - CPE - PSY EN',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: isMobile ? 18 : 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                shadows: const [
                                  Shadow(
                                    blurRadius: 6,
                                    color: Colors.black54,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                bottom: TabBar(
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white70,
                  indicatorColor: Colors.red[100],
                  tabs: [
                    Tab(text: "À la une"),
                    Tab(text: "Formations disciplinaires"),
                    Tab(text: "Formations transversales"),
                    Tab(text: "Rechercher des formations"),
                  ],
                ),
              ),
              drawer: Drawer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        image: const DecorationImage(
                          image: AssetImage("assets/images/fonddesign.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "EAFC Lille",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text("Accueil EAFC"),
                      onTap: () {
                        Navigator.pop(context); // fermer le drawer
                        Navigator.pushNamed(context, Home.id);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.school),
                      title: const Text("Portail Accompagnement personnalisé"),
                      onTap: () {
                        // ouvrir lien externe
                        launchUrl(Uri.parse("https://..."));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.lightbulb),
                      title: const Text(
                        "Portail Intelligence artificielle en éducation",
                      ),
                      onTap: () {
                        launchUrl(Uri.parse("https://..."));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.people),
                      title: const Text("Dispositif Mentorat"),
                      onTap: () {
                        launchUrl(Uri.parse("https://..."));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text("Se déconnecter"),
                      onTap: () {
                        Navigator.pop(context);
                        // gérer la déconnexion si besoin
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
                      "assets/images/fonddesign.jpg",
                      fit: BoxFit.cover,
                      repeat: ImageRepeat.repeat,
                    ),
                  ),

                  // Contenu
                  Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        // ---- ONGLET 1 : À LA UNE ----
                        LayoutBuilder(
                          builder: (context, constraints) {
                            final isMobile = constraints.maxWidth < 800;

                            if (isMobile) {
                              // Version mobile : Column
                              return SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 16.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Titre
                                            Text(
                                              "Bienvenue sur le portail de formation de l’EAFC",
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            // Corps du texte avec puces
                                            Text(
                                              "Cette plateforme vous permet de consulter et d’accéder facilement à l’ensemble de nos formations. À droite, les formations “À la Une” mettent en avant les contenus récents et les parcours phares.\n\n"
                                              "En haut, naviguez entre les onglets :",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors
                                                    .white70, // blanc légèrement grisé
                                                height: 1.5,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            // Liste des onglets avec puces
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "• ",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white70,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        "Formations disciplinaires : toutes les formations par discipline.",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        "• Formations transversales : des formations utiles à tous, quels que soient vos domaines d’activité.",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "• ",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white70,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        "Rechercher des formations : trouvez rapidement la formation qui correspond à vos besoins.",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(height: 20),
                                      Container(
                                        color: Colors.blue[50],
                                        alignment: Alignment.center,
                                        child: moduleGrid(
                                          provider,
                                          MediaQuery.of(context).size.width,
                                          provider.aLaUne,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                              );
                            } else {
                              // Version desktop : Row
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Texte à gauche
                                    Flexible(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          right: 16.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Titre
                                            Text(
                                              "Bienvenue sur le portail de formation de l’EAFC",
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            // Corps du texte avec puces
                                            Text(
                                              "Cette plateforme vous permet de consulter et d’accéder facilement à l’ensemble de nos formations. \n\nÀ droite, les formations “À la Une” mettent en avant les contenus récents et les parcours phares.\n\n"
                                              "En haut, naviguez entre les onglets :",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors
                                                    .white70, // blanc légèrement grisé
                                                height: 1.5,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            // Liste des onglets avec puces
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "• ",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white70,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        "Formations disciplinaires : toutes les formations par discipline.",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "• ",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white70,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        "Formations transversales : des formations utiles à tous, quels que soient vos domaines d’activité.",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "• ",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white70,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        "Rechercher des formations : trouvez rapidement la formation qui correspond à vos besoins.",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    const SizedBox(width: 16),
                                    // Formations à droite scrollable
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        color: Colors.blue.withValues(
                                          alpha: 0.30,
                                        ),
                                        alignment: Alignment.center,
                                        child: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0,
                                              vertical: 8,
                                            ),
                                            child: moduleGrid(
                                              provider,
                                              MediaQuery.of(context).size.width,
                                              provider.aLaUne,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                        ),

                        // ---- ONGLET 2 : DISCIPLINAIRES ----
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),

                            // --- Intro EAFC (fixe) ---
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: Text(
                                "Cliquez sur votre discipline pour accéder aux programmes de formation.",
                                style: TextStyle(
                                  fontSize: isMobile ? 16 : 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            Expanded(
                              child: Container(
                                height: 800,
                                width: 800,
                                child: themeBox(
                                  "LES FORMATIONS DISCIPLINAIRES",

                                  data.themesDisc,
                                  Colors.pink[900],
                                  screenWidth,
                                  data,
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),

                        // ---- ONGLET 3 : TRANSVERSALES ----
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),

                            // --- Intro EAFC (fixe) ---
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: Text(
                                "Cliquez sur votre discipline pour accéder aux programmes de formation.",
                                style: TextStyle(
                                  fontSize: isMobile ? 16 : 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            Expanded(
                              child: Container(
                                height: 800,
                                width: 800,
                                child: themeBox(
                                  "LES FORMATIONS TRANSVERSALES",

                                  data.themesTransv,
                                  const Color.fromARGB(255, 13, 131, 161),
                                  screenWidth,
                                  data,
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),

                        // ---- ONGLET 4 : RECHERCHE ----
                        LayoutBuilder(
                          builder: (context, constraints) {
                            final isMobile = constraints.maxWidth < 800;

                            if (isMobile) {
                              // Version mobile : Column
                              return SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 16.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Titre
                                            Text(
                                              "Bienvenue sur le portail de formation de l’EAFC",
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            // Corps du texte avec puces
                                            Text(
                                              "Cette plateforme vous permet de consulter et d’accéder facilement à l’ensemble de nos formations. À droite, les formations “À la Une” mettent en avant les contenus récents et les parcours phares.\n\n"
                                              "En haut, naviguez entre les onglets :",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors
                                                    .white70, // blanc légèrement grisé
                                                height: 1.5,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            // Liste des onglets avec puces
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "• ",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white70,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        "Formations disciplinaires : toutes les formations par discipline.",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        "• Formations transversales : des formations utiles à tous, quels que soient vos domaines d’activité.",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "• ",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white70,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        "Rechercher des formations : trouvez rapidement la formation qui correspond à vos besoins.",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white70,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(height: 20),
                                      Container(
                                        color: Colors.blue[50],
                                        alignment: Alignment.center,
                                        child: moduleGrid(
                                          provider,
                                          MediaQuery.of(context).size.width,
                                          provider.aLaUne,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                              );
                            } else {
                              // Version desktop : Row
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Texte à gauche
                                    Flexible(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          right: 16.0,
                                        ),
                                        child: Column(
                                          children: [
                                            const SizedBox(height: 100),
                                            // Zone résultats filtrés ici
                                            Center(
                                              child: Text(
                                                "Que recherchez-vous ?",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                16.0,
                                              ),
                                              child: Row(
                                                children: [
                                                  // TextField
                                                  Expanded(
                                                    child: TextField(
                                                      controller: _controller,
                                                      decoration: InputDecoration(
                                                        hintText:
                                                            "Tapez ici vos mots clés séparés par un '/'...",
                                                        prefixIcon: const Icon(
                                                          Icons.search,
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        border: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                12,
                                                              ),
                                                        ),
                                                      ),
                                                      onSubmitted: (value) {
                                                        data.rechercheFormations(
                                                          value,
                                                        );
                                                      },
                                                    ),
                                                  ),

                                                  const SizedBox(width: 8),

                                                  // Bouton de recherche
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      String query = _controller
                                                          .text
                                                          .trim();
                                                      if (query.isNotEmpty) {
                                                        data.rechercheFormations(
                                                          query,
                                                        );
                                                      }
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              12,
                                                            ),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                            horizontal: 16,
                                                            vertical: 14,
                                                          ),
                                                    ),
                                                    child: const Icon(
                                                      Icons.search,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    // Formations à droite scrollable
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        color: Colors.blue.withValues(
                                          alpha: 0.30,
                                        ),

                                        alignment: Alignment.center,
                                        child: data.isSearching
                                            ? Center(
                                                child: Text(
                                                  "Recherche en cours...",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                  ),
                                                ),
                                              )
                                            : SingleChildScrollView(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 8,
                                                      ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      if (provider
                                                          .resultatPrincipal
                                                          .isNotEmpty) ...[
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                16.0,
                                                              ),
                                                          child: Text(
                                                            "Résultats principaux",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 28,
                                                            ),
                                                          ),
                                                        ),
                                                        moduleGrid(
                                                          provider,
                                                          MediaQuery.of(
                                                            context,
                                                          ).size.width,
                                                          provider
                                                              .resultatPrincipal,
                                                        ),
                                                        const SizedBox(
                                                          height: 16,
                                                        ),
                                                      ],
                                                      if (provider
                                                          .resultatSecondaire
                                                          .isNotEmpty) ...[
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                8.0,
                                                              ),
                                                          child: Text(
                                                            "Autres résultats pertinents",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 28,
                                                            ),
                                                          ),
                                                        ),
                                                        moduleGrid(
                                                          provider,
                                                          MediaQuery.of(
                                                            context,
                                                          ).size.width,
                                                          provider
                                                              .resultatSecondaire,
                                                        ),
                                                      ],
                                                      if (provider
                                                              .resultatPrincipal
                                                              .isEmpty &&
                                                          provider
                                                              .resultatSecondaire
                                                              .isEmpty) ...[
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                16.0,
                                                              ),
                                                          child: Text(
                                                            "Aucun résultat trouvé",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 28,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ],
                                                  ),
                                                ),
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
