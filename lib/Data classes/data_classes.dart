import 'dart:convert';

import 'package:appli_paf/Data%20classes/constantes.dart';

class Session {
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    return other is Session && other.numero == numero;
  }

  @override
  int get hashCode => numero.hashCode;
  final int numero;
  final String titre;
  final String modalite;
  final double duree;
  final DateTime finInscriptions;
  final String lienInscriptions;

  const Session({
    required this.numero,
    required this.titre,
    required this.modalite,
    required this.duree,
    required this.finInscriptions,
    required this.lienInscriptions,
  });

  Map<String, dynamic> toJson() {
    return {
      'numero': numero,
      'titre': titre,
      'modalite': modalite,
      'duree': duree,
      'finInscriptions': finInscriptions.toIso8601String(),
      'lienInscriptions': lienInscriptions,
    };
  }

  factory Session.fromJson(Map data) {
    return Session(
      numero: data['numero'],
      titre: data['titre'],
      modalite: data['modalite'],
      duree: data['duree'],
      finInscriptions: DateTime.parse(data['finInscriptions']),
      lienInscriptions: data['lienInscriptions'],
    );
  }
}

class Groupe {
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    return other is Groupe && other.numeroGroupe == numeroGroupe;
  }

  @override
  int get hashCode => numeroGroupe.hashCode;
  final int numeroGroupe;
  final List<Session> sessions;

  const Groupe({required this.numeroGroupe, required this.sessions});

  Map<String, dynamic> toJson() {
    return {
      'numeroGroupe': numeroGroupe,
      'sessions': sessions.map((e) => jsonEncode(e)).toList(),
    };
  }

  factory Groupe.fromJson(Map data) {
    List tSessions = data['sessions'];
    return Groupe(
      numeroGroupe: data['numeroGroupe'],
      sessions: tSessions.map((e) => Session.fromJson(jsonDecode(e))).toList(),
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
  final int code;
  final String plan;
  final String titre;
  final String dispoCode;
  final String dispoTitre;
  final String theme;
  final String public;
  final String objectifs;
  final String contenu;
  final double duree;
  final int effectif;
  final String abonnement;
  final List<Groupe> groupes;

  const Module({
    required this.code,
    required this.plan,
    required this.titre,
    required this.dispoCode,
    required this.dispoTitre,
    required this.theme,
    required this.public,
    required this.objectifs,
    required this.contenu,
    required this.duree,
    required this.effectif,
    required this.abonnement,
    required this.groupes,
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
      'groupes': groupes.map((e) => jsonEncode(e)).toList(),
    };
  }

  factory Module.fromJson(Map data) {
    List tGroupes = data['groupes'];
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
      groupes: tGroupes.map((e) => Groupe.fromJson(jsonDecode(e))).toList(),
    );
  }
}
