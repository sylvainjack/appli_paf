import 'dart:convert';

import 'package:appli_paf/Data/constantes.dart';
import 'package:appli_paf/Data/data_classes.dart';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:flutter/material.dart';

String endPoint = 'https://cloud.appwrite.io/v1';
String projectId = '6441074a8af807749dd9';
String modulesTable = 'modules';
String sessionsTable = 'sessions';
String databaseId = '68d93af100092904c136';

class DataProvider extends ChangeNotifier {
  bool _isInitialized = false;
  bool _initializationStarted = false;
  bool get isInitialized => _isInitialized;
  late Client client;
  late TablesDB tablesDB;

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
  bool _isLoading = false;
  bool get isLoading => _isLoading;

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
        if (module.discipline == true) {
          _themesDisc.add(module.theme);
        } else {
          _themesTransv.add(module.theme);
        }
        _dispoSet.add(module.dispoCode);
      });
      _dispoSet.forEach((dispoCode) {
        _dispoList.add(Dispo(code: dispoCode, modules: []));
      });

      _dispoList.forEach((dispo) {
        _modules.forEach((module) {
          module.dispoCode == dispo.code ? dispo.modules.add(module) : null;
        });
      });

      print('taille de themeDisc :${_themesDisc.length}');
      print('taille de themeTransv :${_themesTransv.length}');
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
    return _modules.where((m) => m.theme == theme).toList();
  }

  void DispoByThemeList() {
    _dispoByTheme = _dispoList
        .where(
          (d) => d.modules.isNotEmpty && d.modules[0].theme == _selectedTheme,
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
}
