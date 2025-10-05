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
  final String ofCode;
  final String ofLibel;
  final String dispoCode;
  final String dispoTitre;
  final String moduleTitre;
  final String public;
  final String publicLibel;
  final String objectif;
  final String contenu;
  final String axe;
  final String modalite;
  final String modaliteLibel;
  final String moduleLibel;
  final String publicGeneralite;
  final String duree;
  final String effectif;
  final String groupes;
  final String abonnement;
  final List tags;

  const Module({
    required this.code,
    required this.plan,
    required this.ofCode,
    required this.ofLibel,
    required this.dispoCode,
    required this.dispoTitre,
    required this.moduleTitre,
    required this.public,
    required this.publicLibel,
    required this.objectif,
    required this.contenu,
    required this.axe,
    required this.modalite,
    required this.modaliteLibel,
    required this.moduleLibel,
    required this.publicGeneralite,
    required this.duree,
    required this.effectif,
    required this.groupes,
    required this.abonnement,
    required this.tags,
  });
  // String get fullText =>
  //     "$titre $objectifs $contenu $public $discipline".toLowerCase();
  String get fullTextPrincipal {
    return "$ofLibel $moduleLibel".toLowerCase();
  }

  // Texte secondaire (moins fort)
  String get fullTextSecondaire {
    return "$objectif $contenu".toLowerCase();
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'plan': plan,
      'ofCode': ofCode,
      'ofLibel': ofLibel,
      'dispoCode': dispoCode,
      'dispoTitre': dispoTitre,
      'moduleTitre': moduleTitre,
      'public': public,
      'publicLibel': publicLibel,
      'objectif': objectif,
      'contenu': contenu,
      'axe': axe,
      'modalite': modalite,
      'modaliteLibel': modaliteLibel,
      'moduleLibel': moduleLibel,
      'publicGeneralite': publicGeneralite,
      'duree': duree,
      'effectif': effectif,
      "groupes": groupes,
      'abonnement': abonnement,
      'tags': tags,
    };
  }

  factory Module.fromJson(Map data) {
    return Module(
      code: data['code'],
      plan: data['plan'],
      ofCode: data['ofCode'],
      ofLibel: (data['ofLibel'] != null && data['ofLibel'].length > 7)
          ? data['ofLibel'].substring(7)
          : data['ofLibel'],
      dispoCode: data['dispoCode'],
      dispoTitre: data['dispoTitre'],
      moduleTitre: data['moduleTitre'],
      public: data['public'],
      publicLibel: data['publicLibel'],
      objectif: data['objectif'],
      contenu: data['contenu'],
      axe: data['axe'],
      modalite: data['modalite'],
      modaliteLibel: data['modaliteLibel'],
      moduleLibel: data['moduleLibel'],
      publicGeneralite: data['publicGeneralite'],
      duree: data['duree'],
      effectif: data['effectif'],
      groupes: data['groupes'],
      abonnement: data['abonnement'],
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
