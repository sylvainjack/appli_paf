import 'dart:convert';

import 'dart:math';
import 'package:diacritic/diacritic.dart';
import 'package:appli_paf/Data/constantes.dart';
import 'package:appli_paf/Data/data_classes.dart';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:flutter/material.dart';

String endPoint = 'https://cloud.appwrite.io/v1';
String projectId = '6441074a8af807749dd9';
String modulesTable = 'listemodules';
String sessionsTable = 'sessions';
String databaseId = '68d93af100092904c136';

class DataProvider extends ChangeNotifier {
  bool _isInitialized = false;
  bool _initializationStarted = false;
  bool isSearching = false;
  bool get isInitialized => _isInitialized;
  late Client client;
  late TablesDB tablesDB;
  Set<Module> _aLaUne = {};
  List<Module> get aLaUne => _aLaUne.toList();
  List<Module> _modules = [];
  List<Session> _sessions = [];
  List<Module> get modules => _modules;
  Set<String> _themesDisc = {};
  Set<String> _themesTransv = {};
  Set<String> _dispoSet = {};
  List<Dispo> _dispoList = [];
  List<Dispo> get dispoList => _dispoList;
  List<Dispo> _dispoByTheme = [];
  List<Dispo> get dispoByTheme => _dispoByTheme;
  String _selectedTheme = "";
  String get selectedTheme => _selectedTheme;
  List<String> get themesDisc => _themesDisc.toList();
  List<String> get themesTransv => _themesTransv.toList();
  List<Module> _resultatRecherche = [];
  List<Module> get resultatRecherche => _resultatRecherche;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<Module> _resultatPrincipal = [];
  List<Module> _resultatSecondaire = [];

  List<Module> get resultatPrincipal => _resultatPrincipal;
  List<Module> get resultatSecondaire => _resultatSecondaire;
  String? _error;
  String? get error => _error;

  Device _device = Device.inconnu;

  Device get device => _device;
  double _deviceWidth = 0;

  double get deviceWidth => _deviceWidth;
  double _deviceHeight = 0;

  double get deviceHeight => _deviceHeight;
  double smallFont = 0;
  double smallFont2 = 0;
  double smallFont3 = 0;
  double mediumFont = 0;
  double mediumFont2 = 0;
  double mediumFont3 = 0;
  double largeFont = 0;
  double largeFont2 = 0;
  double largeFont3 = 0;
  double largeFont4 = 0;
  double veryLargeFont = 0;
  List<String> codeTransv = [
    "REE_",
    "NUME",
    "VALR",
    "IDIS",
    "CAST",
    "CIN_",
    "DANS",
    "DAR_",
    "DESC",
    "EAFC",
    "EANA",
    "EDOR",
    "EMI_",
    "EXER",
    "GRH_",
    "HYSE",
    "PSC_",
    "RECH",
    "THE_",
    "TUTE",
  ];
  DataProvider() {
    startInitialization();
    // Lance la récupération des modules dès l'initialisation
  }
  void startInitialization() async {
    if (!_initializationStarted) {
      _initializationStarted = true;
      initialisationBases();
      await fetchModules();
      await fetchSessions();
      // Création liste des thèmes
      print("taille de la liste modules: ${_modules.length}");
      _modules.forEach((module) {
        if (!codeTransv.contains(module.ofCode)) {
          _themesDisc.add(module.ofLibel);
        }
        // else {
        //   _themesTransv.add(module.theme);
        // }
        _dispoSet.add(module.dispoCode);
      });
      _dispoSet.forEach((dispoCode) {
        _dispoList.add(Dispo(code: dispoCode, modules: []));
      });
      _themesTransv = {
        "L'école et le monde de l'entreprise",
        "Le numérique éducatif",
        "L'inclusion scolaire",
        "L'intelligence artificielle",
        "Sécurité et secourisme",
        "L'orientation des élèves",
        "Culture scientifique",
        "Action culturelle",
        "Les valeurs de la République",
        "Education au média et à l'information",
        "Scolarisation des allophones",
        "Les compétences psychosociales",
        "L'innovation et la recherche",
        "Lutter contre les discriminations",
      };
      print("Theme n°1 : ${themesTransv[0]}");
      _dispoList.forEach((dispo) {
        _modules.forEach((module) {
          module.dispoCode == dispo.code ? dispo.modules.add(module) : null;
        });
      });

      print('taille de themeDisc :${_themesDisc.length}');
      print('taille de themeTransv :${_themesTransv.length}');
      remplirALaUne();
    }
  }

  void remplirALaUne() {
    final random = Random();

    if (_modules.isNotEmpty) {
      // Mélanger la liste pour l’aléatoire
      final shuffled = List<Module>.from(_modules)..shuffle(random);

      // Prendre les 9 premiers et les ajouter au set
      _aLaUne = shuffled.take(8).toSet();
    }
  }

  Future<void> initialisationBases() async {
    final client = Client()
        .setEndpoint('https://fra.cloud.appwrite.io/v1') // ton endpoint
        .setProject('68d80b0d00062d3f47ed')
        .setKey(
          "standard_c1bb1ed2d40531fc7cf5ca6560b5b938bda4d83e4d0bb092378372afc8f2d9843b3feb97572530f330f01e490337907badf216c4ec73e3ab9869eec73f99a0ae6491040f022f607db5dbd6c4223ee3bd028016cfdc757b71f25e59d65bd44c1bdc7a595fb5d1c92e13f515bb01c49441d8b90eb9229787d25ca59b84b82dddb1",
        );

    tablesDB = TablesDB(client);
  }

  Future<void> fetchModules() async {
    _isLoading = true;
    notifyListeners();

    try {
      _modules.clear(); // éviter doublons

      String? cursor; // pour la pagination
      bool hasMore = true;

      while (hasMore) {
        final response = await tablesDB.listRows(
          databaseId: databaseId,
          tableId: modulesTable,
          queries: [
            Query.limit(100), // maximum autorisé
            if (cursor != null) Query.cursorAfter(cursor),
          ],
        );

        // Ajoute les modules récupérés
        for (var moduleRow in response.rows) {
          final moduleMap = moduleRow.data;
          final module = Module.fromJson(moduleMap);
          _modules.add(module);
        }

        // Vérifie s’il reste d’autres données
        if (response.rows.isEmpty || response.rows.length < 100) {
          hasMore = false;
        } else {
          cursor = response.rows.last.$id; // identifiant du dernier élément
        }
      }

      _error = null;
    } catch (e) {
      _error = e.toString();
      print('Erreur fetchModules: $_error');
    } finally {
      _isLoading = false;
      _isInitialized = true;
      print("Nombre de modules rapatriés : ${modules.length}");
      notifyListeners();
    }
  }

  Future<void> fetchSessions() async {
    _isLoading = true;
    notifyListeners();

    try {
      _sessions.clear(); // éviter doublons

      String? cursor; // pour la pagination
      bool hasMore = true;

      while (hasMore) {
        final response = await tablesDB.listRows(
          databaseId: databaseId,
          tableId: sessionsTable, // ton identifiant de table sessions
          queries: [
            Query.limit(100), // maximum autorisé
            if (cursor != null) Query.cursorAfter(cursor),
          ],
        );

        // Ajoute les sessions récupérées
        for (var sessionRow in response.rows) {
          final sessionMap = sessionRow.data;
          final session = Session.fromJson(sessionMap);
          _sessions.add(session);
        }

        // Vérifie s’il reste d’autres données
        if (response.rows.isEmpty || response.rows.length < 100) {
          hasMore = false;
        } else {
          cursor = response.rows.last.$id; // identifiant du dernier élément
        }
      }

      _error = null;
    } catch (e) {
      _error = e.toString();
      print('Erreur fetchSessions: $_error');
    } finally {
      _isLoading = false;
      _isInitialized = true;
      notifyListeners();
    }
  }

  Session? getSessionForModule(String moduleCode) {
    try {
      return _sessions.firstWhere(
        (session) => session.moduleCode == moduleCode,
      );
    } catch (e) {
      // aucune session trouvée pour ce module
      return null;
    }
  }

  List<Module> getModulesByTheme(String theme) {
    return _modules.where((m) => m.ofLibel == theme).toList();
  }

  void DispoByThemeList() {
    _dispoByTheme = _dispoList
        .where(
          (d) => d.modules.isNotEmpty && d.modules[0].ofLibel == _selectedTheme,
        )
        .toList();

    print(
      "Nombre de dispo dans ce theme ($_selectedTheme) : ${_dispoByTheme.length}",
    );
  }

  void setTheme(String Theme) {
    _selectedTheme = Theme;
  }

  List<Module> getModulesByPlan(String plan) {
    return _modules.where((m) => m.plan == plan).toList();
  }

  Module? getModuleByCode(int code) {
    try {
      return _modules.firstWhere((m) => m.code == code);
    } catch (e) {
      return null;
    }
  }

  // void rechercheFormations(String recherche) {
  //   print(recherche);

  //   final keywords = recherche
  //       .toLowerCase()
  //       .split('/')
  //       .map((k) => k.trim())
  //       .where((k) => k.isNotEmpty)
  //       .toList();
  //   _resultatRecherche = modules.where((m) {
  //     return keywords.every((k) => m.fullText.contains(k));
  //   }).toList();
  // Filtrer les modules qui contiennent au moins un mot clé
  // _resultatRecherche = modules.where((m) {
  //   return keywords.any((k) => m.fullText.contains(k));
  // }).toList();

  // // Option : trier par pertinence (nombre de mots trouvés)
  // _resultatRecherche.sort((a, b) {
  //   int scoreA = keywords.where((k) => a.fullText.contains(k)).length;
  //   int scoreB = keywords.where((k) => b.fullText.contains(k)).length;
  //   return scoreB.compareTo(scoreA);
  // });

  // _resultatRecherche = {
  //   Module(
  //     code: "111111",
  //     plan: "plan",
  //     theme: "ANGLAIS",
  //     titre: "titre",
  //     dispoCode: "dispoCode",
  //     dispoTitre: "dispoTitre",
  //     public: "public",
  //     objectifs: "objectifs",
  //     contenu: "contenu",
  //     duree: "duree",
  //     effectif: "effectif",
  //     abonnement: "abonnement",
  //     discipline: true,
  //     tags: [],
  //   ),
  // };
  //   notifyListeners();
  // }

  // void rechercheFormations(String recherche) {
  //   print("Recherche : $recherche");

  //   // Normaliser et découper la recherche en mots-clés
  //   final keywords = recherche
  //       .toLowerCase()
  //       .split('/')
  //       .map((k) => removeDiacritics(k.trim()))
  //       .where((k) => k.isNotEmpty)
  //       .toList();

  //   print("Mots-clés : $keywords");

  //   _resultatRecherche = modules.where((m) {
  //     // Texte complet du module normalisé (minuscules + sans accents)
  //     final fullText = removeDiacritics(m.fullText.toLowerCase());
  //     // Vérifier que tous les mots-clés sont présents
  //     return keywords.every((k) => fullText.contains(k));
  //   }).toList();

  //   print("Résultat : ${_resultatRecherche.length} modules trouvés");
  //   notifyListeners();
  // }

  // Normaliser texte : minuscules, suppression accents, espaces multiples
  String normalizeText(String s) {
    return removeDiacritics(
      s.toLowerCase(),
    ).replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  // Recherche par mots-clés
  // void rechercheFormations(String query) {
  //   // Découper par '/'
  //   final rawKeywords = query.split('/');

  //   final keywords = rawKeywords
  //       .map((k) => normalizeText(k))
  //       .where((k) => k.isNotEmpty)
  //       .toList();

  //   List<Module> results = [];

  //   for (var m in modules) {
  //     final fullText = normalizeText(m.fullText);

  //     bool matches = true;

  //     // Vérifier mots obligatoires (commencent par '+') et facultatifs
  //     for (var k in keywords) {
  //       if (k.startsWith('+')) {
  //         String word = k.substring(1);
  //         if (!fullText.contains(word)) {
  //           matches = false;
  //           break;
  //         }
  //       }
  //     }

  //     // Vérifier au moins un mot facultatif si aucun obligatoire n'est présent
  //     bool hasOptional = keywords.any(
  //       (k) => !k.startsWith('+') && fullText.contains(k),
  //     );
  //     if (!keywords.any((k) => k.startsWith('+')) && !hasOptional) {
  //       matches = false;
  //     }

  //     if (matches) {
  //       results.add(m);
  //     }
  //   }

  //   // Trier par nombre de mots trouvés pour pertinence
  //   results.sort((a, b) {
  //     int scoreA = keywords
  //         .where((k) => fullTextContains(normalizeText(a.fullText), k))
  //         .length;
  //     int scoreB = keywords
  //         .where((k) => fullTextContains(normalizeText(b.fullText), k))
  //         .length;
  //     return scoreB.compareTo(scoreA);
  //   });

  //   _resultatRecherche = List.of(results);
  //   notifyListeners();
  // }

  // // Fonction helper pour gérer '+' et normalisation
  // bool fullTextContains(String text, String keyword) {
  //   if (keyword.startsWith('+')) {
  //     return text.contains(keyword.substring(1));
  //   } else {
  //     return text.contains(keyword);
  //   }
  // }

  // Recherche simple : tous les mots-clés doivent être présents
  // void rechercheFormations(String query) {
  //   _resultatRecherche.clear();
  //   final keywords = query
  //       .split('/')
  //       .map((k) => normalizeText(k))
  //       .where((k) => k.isNotEmpty)
  //       .toList();

  //   _resultatRecherche.addAll(
  //     modules.where((m) {
  //       final fullText = normalizeText(m.fullText);
  //       return keywords.every((k) => fullText.contains(k));
  //     }).toList(),
  //   );
  //   notifyListeners();
  // }

  int levenshtein(String s, String t) {
    final m = s.length;
    final n = t.length;

    if (m == 0) return n;
    if (n == 0) return m;

    List<List<int>> dp = List.generate(
      m + 1,
      (_) => List<int>.filled(n + 1, 0, growable: false),
      growable: false,
    );

    for (int i = 0; i <= m; i++) dp[i][0] = i;
    for (int j = 0; j <= n; j++) dp[0][j] = j;

    for (int i = 1; i <= m; i++) {
      for (int j = 1; j <= n; j++) {
        int cost = s[i - 1] == t[j - 1] ? 0 : 1;
        dp[i][j] = [
          dp[i - 1][j] + 1, // suppression
          dp[i][j - 1] + 1, // insertion
          dp[i - 1][j - 1] + cost, // substitution
        ].reduce((a, b) => a < b ? a : b);
      }
    }

    return dp[m][n];
  }

  // void rechercheFormations(String query, {int tolerance = 2}) {
  //   _resultatRecherche.clear();

  //   final keywords = query
  //       .split('/')
  //       .map((k) => normalizeText(k))
  //       .where((k) => k.isNotEmpty)
  //       .toList();

  //   // 1️⃣ Recherche rapide avec contains()
  //   _resultatRecherche.addAll(
  //     modules.where((m) {
  //       final fullText = normalizeText(m.fullText);
  //       return keywords.every((kw) {
  //         final kwWords = kw.split(' ');
  //         return kwWords.every((kwWord) => fullText.contains(kwWord));
  //       });
  //     }).toList(),
  //   );

  //   // 2️⃣ Si aucun résultat, recherche avec Levenshtein
  //   if (_resultatRecherche.isEmpty) {
  //     _resultatRecherche.addAll(
  //       modules.where((m) {
  //         final fullText = normalizeText(m.fullText);
  //         final words = fullText.split(' ');

  //         return keywords.every((kw) {
  //           final kwWords = kw.split(' ');
  //           return kwWords.every(
  //             (kwWord) => words.any((w) => levenshtein(kwWord, w) <= tolerance),
  //           );
  //         });
  //       }).toList(),
  //     );
  //   }

  //   notifyListeners();
  // }

  Future<void> rechercheFormations(String query, {int tolerance = 1}) async {
    _resultatPrincipal.clear();
    _resultatSecondaire.clear();
    isSearching = true;

    notifyListeners();
    await Future.delayed(Duration.zero);

    final keywords = query
        .split('/')
        .map((k) => normalizeText(k))
        .where((k) => k.isNotEmpty)
        .toList();

    bool containsMatch(String text, List<String> keywords) {
      final fullText = normalizeText(text);
      return keywords.every((kw) => fullText.contains(kw));
    }

    bool fuzzyMatch(String text, List<String> keywords, int tolerance) {
      final fullText = normalizeText(text);
      final words = fullText.split(' ');
      return keywords.every(
        (kw) => words.any((w) => levenshtein(kw, w) <= tolerance),
      );
    }

    // --- Étape 1 : recherche stricte ---
    for (final m in modules) {
      final inPrincipal = containsMatch(m.fullTextPrincipal, keywords);
      final inSecondaire =
          !inPrincipal && containsMatch(m.fullTextSecondaire, keywords);

      if (inPrincipal) {
        _resultatPrincipal.add(m);
      } else if (inSecondaire) {
        _resultatSecondaire.add(m);
      }
    }

    // --- Étape 2 : si rien trouvé, fallback Levenshtein ---
    if (_resultatPrincipal.isEmpty && _resultatSecondaire.isEmpty) {
      for (final m in modules) {
        final inPrincipal = fuzzyMatch(
          m.fullTextPrincipal,
          keywords,
          tolerance,
        );
        final inSecondaire =
            !inPrincipal &&
            fuzzyMatch(m.fullTextSecondaire, keywords, tolerance);

        if (inPrincipal) {
          _resultatPrincipal.add(m);
        } else if (inSecondaire) {
          _resultatSecondaire.add(m);
        }
      }
    }

    isSearching = false;
    notifyListeners();
  }
}
