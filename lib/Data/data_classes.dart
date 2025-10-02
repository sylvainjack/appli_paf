import 'dart:convert';

import 'package:appli_paf/Data/constantes.dart';

class Session {
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    return other is Session && other.guid == guid;
  }

  @override
  int get hashCode => guid.hashCode;

  final String guid;
  final String titre;
  final String modalite;
  final double duree;
  final int nbPlaces;
  final int nbRestantes;
  final DateTime debut;
  final DateTime fin;
  final DateTime finInscriptions;
  final String lieu;
  final String lienInscriptions;
  final String moduleCode;
  final String description;

  const Session({
    required this.guid,
    required this.titre,
    required this.modalite,
    required this.duree,
    required this.nbPlaces,
    required this.nbRestantes,
    required this.debut,
    required this.fin,
    required this.finInscriptions,
    required this.lieu,
    required this.lienInscriptions,
    required this.moduleCode,
    required this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'guid': guid,
      'titre': titre,
      'modalite': modalite,
      'duree': duree,
      'nbPlaces': nbPlaces,
      'nbRestantes': nbRestantes,
      'debut': debut.toIso8601String(),
      'fin': fin.toIso8601String(),
      'finInscriptions': finInscriptions.toIso8601String(),
      'lieu': lieu,
      'lienInscriptions': lienInscriptions,
      'moduleCode': moduleCode,
      'description': description,
    };
  }

  factory Session.fromJson(Map data) {
    return Session(
      guid: data['guid'],
      titre: data['titre'],
      modalite: data['modalite'],
      duree: data['duree'],
      nbPlaces: data['nbPlaces'],
      nbRestantes: data['nbRestantes'],
      debut: DateTime.parse(data['debut']),
      fin: DateTime.parse(data['fin']),
      finInscriptions: DateTime.parse(data['finInscriptions']),
      lieu: data['lieu'],
      lienInscriptions: data['lienInscriptions'],
      moduleCode: data['moduleCode'],
      description: data['description'],
    );
  }
}

class Module {
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    return other is Module && other.code == code;
  }

  @override
  int get hashCode => code.hashCode;
  final String code;
  final String plan;
  final String theme;
  final String titre;
  final String dispoCode;
  final String dispoTitre;
  final String public;
  final String objectifs;
  final String contenu;
  final String duree;
  final String effectif;
  final String abonnement;
  final bool discipline;
  final List tags;
  //final List<Groupe> groupes;

  const Module({
    required this.code,
    required this.plan,
    required this.theme,
    required this.titre,
    required this.dispoCode,
    required this.dispoTitre,
    required this.public,
    required this.objectifs,
    required this.contenu,
    required this.duree,
    required this.effectif,
    required this.abonnement,
    required this.discipline,
    required this.tags,
    // required this.groupes,
  });

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'plan': plan,
      'theme': theme,
      'titre': titre,
      'dispoCode': dispoCode,
      'dispoTitre': dispoTitre,
      'public': public,
      'objectifs': objectifs,
      'contenu': contenu,
      'duree': duree,
      'effectif': effectif,
      'abonnement': abonnement,
      'discipline': discipline,
      'tags': tags,
    };
  }

  factory Module.fromJson(Map data) {
    // List tGroupes = data['groupes'];
    return Module(
      code: data['code'],
      plan: data['plan'],
      theme: data['theme'],
      titre: data['titre'],
      dispoCode: data['dispoCode'],
      dispoTitre: data['dispoTitre'],
      public: data['public'],
      objectifs: data['objectifs'],
      contenu: data['contenu'],
      duree: data['duree'],
      effectif: data['effectif'],
      abonnement: data['abonnement'],
      discipline: data['discipline'],
      tags: data['tags'],
    );
  }
}

class Dispo {
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    return other is Dispo && other.code == code;
  }

  @override
  int get hashCode => code.hashCode;
  final String code;
  final List<Module> modules;

  const Dispo({required this.code, required this.modules});

  Map<String, dynamic> toJson() {
    return {'code': code, 'modules': modules};
  }

  factory Dispo.fromJson(Map data) {
    return Dispo(code: data['code'], modules: data['modules']);
  }
}
