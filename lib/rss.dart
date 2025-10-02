import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import 'package:intl/intl.dart';

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
  final String lienInscriptions;

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
    required this.lienInscriptions,
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
      'lienInscriptions': lienInscriptions,
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
      lienInscriptions: data['lienInscriptions'],
    );
  }
}

void main() async {
  final url =
      'https://eduline.ac-lille.fr/sofia-fmo-acad//public/api/individualtrainingplan/apiFeedId/19/token/oNataoW5YDxFcrQPP1hPQDUWJf9LLpiZLJPNAaoUA6TnB4vcwI/format/rss';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final document = XmlDocument.parse(response.body);
    final items = document.findAllElements('item');

    final List<Session> sessions = [];

    for (var item in items) {
      final title = item.getElement('title')?.innerText ?? '';
      final guid = item.getElement('guid')?.innerText ?? '';
      final modalite =
          item.getElement('sofiafmo:sessionModality')?.innerText ?? '';
      final dureeStr =
          item.getElement('sofiafmo:sessionDuration')?.innerText ?? '0';
      final nbPlacesStr =
          item
              .getElement('sofiafmo:sessionTraineesPreRegistrationMaxTrainees')
              ?.innerText ??
          '0';
      final nbRestantesStr =
          item
              .getElement(
                'sofiafmo:sessionAreThereAnyFreePlacesForPreRegistration',
              )
              ?.innerText ??
          'true';

      final beginStr =
          item.getElement('sofiafmo:sessionBeginDatetime')?.innerText ?? '';
      final endStr =
          item.getElement('sofiafmo:sessionEndDatetime')?.innerText ?? '';
      final registrationEndStr =
          item
              .getElement('sofiafmo:sessionPublicationEndDatetime')
              ?.innerText ??
          '';

      DateTime debut = DateTime.parse(beginStr);
      DateTime fin = DateTime.parse(endStr);
      DateTime finInscriptions = DateTime.parse(registrationEndStr);

      // Lien de préinscription
      final description = item.getElement('description')?.innerText ?? '';
      final preRegExp = RegExp(r'href="([^"]+)">Me préinscrire');
      final lienInscriptions =
          preRegExp.firstMatch(description)?.group(1) ?? '';

      sessions.add(
        Session(
          guid: guid,
          titre: title,
          modalite: modalite,
          duree: double.tryParse(dureeStr) ?? 0,
          nbPlaces: int.tryParse(nbPlacesStr) ?? 0,
          nbRestantes: nbRestantesStr.toLowerCase() == 'true' ? 1 : 0,
          debut: debut,
          fin: fin,
          finInscriptions: finInscriptions,
          lienInscriptions: lienInscriptions,
        ),
      );
    }

    // Exemple d'affichage
    for (var s in sessions) {
      print(s.toJson());
    }
  } else {
    print('Erreur lors de la récupération du flux: ${response.statusCode}');
  }
}
