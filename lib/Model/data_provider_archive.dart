// import 'dart:convert';
// import 'dart:io';
// // import 'dart:io' show Platform;
// import 'dart:typed_data';
// import 'package:mon_niveau_anglais/data/items_ce_a1.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:math';
// import 'package:mon_niveau_anglais/data/data_class.dart';
// import 'package:mon_niveau_anglais/data/constants.dart';
// import 'package:appwrite/appwrite.dart';
// import 'package:mon_niveau_anglais/data/items_cl_a1.dart';
// import 'package:mon_niveau_anglais/data/items_co.dart';
// import 'package:mon_niveau_anglais/logic/server.dart';
// import 'package:path_provider/path_provider.dart';

// String dBId = '64413d68c22699cb95ba';
// String endPoint = 'https://cloud.appwrite.io/v1';
// String projectId = '6441074a8af807749dd9';
// String colUtilisateurs = '64413d88ca48cb56fc26';

// class UdProvider with ChangeNotifier {
// // Variables pour l'affichage du texte (taille) en fonction du Device
//  // Device _device = Device.inconnu;

//   //Device get device => _device;
//   double _deviceWidth = 0;

//   double get deviceWidth => _deviceWidth;
//   double _deviceHeight = 0;

//   double get deviceHeight => _deviceHeight;
//   double smallFont = 0;
//   double smallFont2 = 0;
//   double smallFont3 = 0;
//   double mediumFont = 0;
//   double mediumFont2 = 0;
//   double mediumFont3 = 0;
//   double largeFont = 0;
//   double largeFont2 = 0;
//   double largeFont3 = 0;
//   double largeFont4 = 0;
//   double veryLargeFont = 0;

// //appWrite
//   final Client _client = Client();

//   late Uint8List fileSupportBytes;
//   late Uint8List audioSupportBytes;
//   late Uint8List fileCh1Bytes;
//   late Uint8List fileCh2Bytes;
//   late Uint8List fileCh3Bytes;
//   late Uint8List fileCh4Bytes;

//   late File audioSupport;
//   late File ch1;
//   late File ch2;
//   late File ch3;
//   late File ch4;

//   // String _filePath = "";
//   late Account _account;
//   late Databases _db;
//   late Functions _functions;
//   late String _sessionId;
//   late Realtime _realtime;
//   bool _needSaving = false;

//   bool get needSaving => _needSaving;



//   Future<String> checkAccountId(email, password) async {
//     _account = Account(_client);
//     _db = Databases(_client);
//     try {
//       _client
//           .setEndpoint(endPoint)
//           .setProject(projectId)
//           .setSelfSigned(status: true);
//     } // Remove in production
//     catch (e) {
//       print(e);
//     }
//     String bilan = '';
//     try {
//       await _account.deleteSession(sessionId: 'current');
//       print('La session est fermée');
//     } catch (e) {
//       print("La session ne sest pas fermée : $e");
//     }

//     try {
//       final session = await _account.createEmailPasswordSession(
//           email: email, password: password);
//       bilan = '';
//       _sessionId = session.$id;
//     } catch (e) {
//       bilan = 'not ok';
//       print(e);
//       logOff();
//     }
//     return bilan;
//   }

//   Future<bool> createSession(
//       {required String email, required String password}) async {
//     try {
//       final session = await _account.createEmailPasswordSession(
//           email: email, password: password);
//       _sessionId = session.$id;
//       return true;
//     } catch (e) {
//       print('Pb Creation session : $e');
//       return false;
//     }
//   }

//   Future<void> logOff() async {
//     try {
//       await _account.deleteSession(sessionId: _sessionId);
//       print('La session est fermée');
//     } catch (e) {
//       print("La session ne sest pas fermée : $e");
//     }
//   }

//   Future<void> uploadNewItems() async {
// // GRAMMAIRE
// // Création ou modification de la collection ItemsCLA1

//     for (ItemEvalangue item in listeCLA1) {
//       try {
//         print(item.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '65465d885ca38ef86314',
//           documentId: item.ref,
//           data: {"itemEvalangue": jsonEncode(item.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }

//     // Création ou modification de la collection ItemsCLA2

//     for (ItemEvalangue item in listeCLA2) {
//       try {
//         print(item.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '65465d956101160c8ee7',
//           documentId: item.ref,
//           data: {"itemEvalangue": jsonEncode(item.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }

//     // Création ou modification de la collection ItemsCLA2+

//     for (ItemEvalangue item in listeCLA2p) {
//       try {
//         print(item.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '65465dad33a5a1299643',
//           documentId: item.ref,
//           data: {"itemEvalangue": jsonEncode(item.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }

//     // Création ou modification de la collection ItemsCLA2+

//     for (ItemEvalangue item in listeCLB1) {
//       try {
//         print(item.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '65465dba75578f51f1a3',
//           documentId: item.ref,
//           data: {"itemEvalangue": jsonEncode(item.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }

// // Création ou modification de la collection ItemsCEA1

//     for (ItemEvalangue item in listeCEA1) {
//       try {
//         print(item.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '644140dc91ca30c96457',
//           documentId: item.ref,
//           data: {"itemEvalangue": jsonEncode(item.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }

//     // Création ou modification de la collection ItemsCEA2

//     for (ItemEvalangue item in listeCEA2) {
//       try {
//         print(item.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '65465d04ac98c5ad45c1',
//           documentId: item.ref,
//           data: {"itemEvalangue": jsonEncode(item.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }

//     // Création ou modification de la collection ItemsCEA2+

//     for (ItemEvalangue item in listeCEA2p) {
//       try {
//         print(item.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '65465d1868d134b715fc',
//           documentId: item.ref,
//           data: {"itemEvalangue": jsonEncode(item.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }

//     // Création ou modification de la collection ItemsCEA2+

//     for (ItemEvalangue item in listeCEB1) {
//       try {
//         print(item.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '65465d2712c48b38b12a',
//           documentId: item.ref,
//           data: {"itemEvalangue": jsonEncode(item.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }
//   }

//   Future<void> createBanks() async {
//     for (FicheGrammaire fiche in _fichesGrammaireGV) {
//       try {
//         print(fiche.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '64414042a897836efe81',
//           documentId: fiche.ref,
//           data: {"fiche": jsonEncode(fiche.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }
//     for (FicheGrammaire fiche in _fichesGrammaireGN) {
//       try {
//         print(fiche.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '64414017bf94bcbdd83a',
//           documentId: fiche.ref,
//           data: {"fiche": jsonEncode(fiche.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }
//     for (FicheGrammaire fiche in _fichesGrammairePC) {
//       try {
//         print(fiche.ref);
//         await _db.createDocument(
//           databaseId: dBId,
//           collectionId: '64413fbd0d5932e54eee',
//           documentId: fiche.ref,
//           data: {"fiche": jsonEncode(fiche.toJson())},
//         );
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }
//   }

//   Future<bool> completeUserProfile({
//     required String age,
//   }) async {
//     Map userTemp = {};
//     bool ready = false;
//     try {
//       final userInfo = await _account.get();
//       while (ready == false) {
//         try {
//           final doc = await _db.getDocument(
//               databaseId: dBId,
//               collectionId: colUtilisateurs,
//               documentId: userInfo.$id);
//           userTemp = doc.data;
//           ready = true;
//         } catch (e) {
//           print('Je nai pas le document de profile : $e');
//         }
//       }
//       print('Finalement je lai eu');
//       _user = Utilisateur.fromJson(userTemp);
//       _user.age = age;

//       await _db.updateDocument(
//           databaseId: dBId,
//           collectionId: colUtilisateurs,
//           documentId: _user.userId,
//           data: _user.toJson());
//       return true;
//     } catch (e) {
//       print('Voici lerreur lors de completer le profile : $e');
//       return false;
//     }
//   }

//   Future<void> updateUserProfile({required Utilisateur user}) async {
//     _user = user;
//     try {
//       await _db.updateDocument(
//           databaseId: dBId,
//           collectionId: colUtilisateurs,
//           documentId: _user.userId,
//           data: {
//             'pseudo': _user.pseudo,
//             'avatar': _user.avatar,
//           });
//     } catch (e) {
//       print('La mise a jour na pas fonctionné : $e');
//     }
//   }

//   Future<List<ItemRef>> downloadItemRef(String doc) async {
//     List<ItemRef> bufferList = [];
//     print('Voici doc : $doc');
//     try {
//       final document = await _db.getDocument(
//         databaseId: '64413d68c22699cb95ba',
//         collectionId: "65ad3ac48dc64f853880",
//         documentId: doc,
//       );
//       List documentData = jsonDecode(document.data['itemRefs']).toList();

//       for (var itemRef in documentData) {
//         var part = itemRef.split('-');
//         bufferList.add(ItemRef(ref: part[0], refSupport: part[1]));
//       }
//       print('taille de bufferlist : ${bufferList.length}');
//       return bufferList;
//     } on AppwriteException catch (e) {
//       print(e.message);
//       return [];
//     }
//   }

//   Future<void> downLoadUserInfo() async {
//     print("J'arrive dans DOWNLOAD");
//     _functions = Functions(_client);
//     _realtime = Realtime(_client);
//     final compte = await _account.get();
//     String id = compte.$id;

//     // await updateItems();

// // TELECHARGEMENT DES DONNEES DE BASE DU USER
//     final userData = await _db.getDocument(
//         databaseId: dBId, collectionId: colUtilisateurs, documentId: id);
//     _user = Utilisateur.fromJson(userData.data);
//     _fichesGrammaireGN.clear();
//     _fichesGrammaireGV.clear();
//     _fichesGrammairePC.clear();
//     itemRefCEA1.clear();
//     itemRefCEA2.clear();
//     itemRefCEA2p.clear();
//     itemRefCEB1.clear();
//     itemRefCOA1.clear();
//     itemRefCOA2.clear();
//     itemRefCOA2p.clear();
//     itemRefCOB1.clear();
//     itemRefCLA1.clear();
//     itemRefCLA2.clear();
//     itemRefCLA2p.clear();
//     itemRefCLB1.clear();

//     itemRefCEA1 = await downloadItemRef('CEA1');
//     print('OK CEA1    ${itemRefCEA1.length}');
//     itemRefCEA2 = await downloadItemRef('CEA2');
//     print('OK CEA2');
//     itemRefCEA2p = await downloadItemRef('CEA2p');
//     print('OK CEA2P');
//     itemRefCEB1 = await downloadItemRef('CEB1');
//     print('OK CEB1');
//     itemRefCOA1 = await downloadItemRef('COA1');
//     print('OK COA1');
//     itemRefCOA2 = await downloadItemRef('COA2');
//     print('OK COA2');
//     itemRefCOA2p = await downloadItemRef('COA2p');
//     print('OK COA2p');
//     itemRefCOB1 = await downloadItemRef('COB1');
//     print('OK COB1');
//     itemRefCLA1 = await downloadItemRef('CLA1');
//     print('OK CLA1');
//     print('OK CLA1    ${itemRefCLA1.length}');
//     itemRefCLA2 = await downloadItemRef('CLA2');
//     print('OK CLA2');
//     itemRefCLA2p = await downloadItemRef('CLA2p');
//     print('OK CLA2p');
//     itemRefCLB1 = await downloadItemRef('CLB1');
//     print('OK CLB1');

//     print("Element 0 : ${itemRefCEA1.length}et   ");
//     print("Jes suis après downloadItemRef");

// // Téléchargement des fiches de grammaire
//     try {
//       final fichesGV = await _db.listDocuments(
//           databaseId: dBId, collectionId: '64414042a897836efe81');
//       final fichesGN = await _db.listDocuments(
//           databaseId: dBId, collectionId: '64414017bf94bcbdd83a');
//       final fichesPC = await _db.listDocuments(
//           databaseId: dBId, collectionId: '64413fbd0d5932e54eee');

//       for (var element in fichesGN.documents) {
//         _fichesGrammaireGN
//             .add(FicheGrammaire.fromJson(jsonDecode(element.data['fiche'])));
//       }
//       for (var element in fichesPC.documents) {
//         _fichesGrammairePC
//             .add(FicheGrammaire.fromJson(jsonDecode(element.data['fiche'])));
//       }
//       for (var element in fichesGV.documents) {
//         _fichesGrammaireGV
//             .add(FicheGrammaire.fromJson(jsonDecode(element.data['fiche'])));
//       }
//     } catch (e) {
//       print(e);
//     }
//     print(
//         'Voici INIT : ${_user.init}   et voici la taille de la liste : ${_user.travailFichesGrammaireGV.length}');
//     if (_user.init == false) {
//       for (FicheGrammaire fiche in _fichesGrammaireGV) {
//         _user.travailFichesGrammaireGV.add(TravailFicheGrammaire(
//             ref: fiche.ref,
//             datederniereConsultation: DateTime.fromMicrosecondsSinceEpoch(0),
//             nbrConsultations: 0,
//             nbrExercices: 0,
//             resultats: []));
//       }

//       for (FicheGrammaire fiche in _fichesGrammaireGN) {
//         _user.travailFichesGrammaireGN.add(TravailFicheGrammaire(
//             ref: fiche.ref,
//             datederniereConsultation: DateTime.fromMicrosecondsSinceEpoch(0),
//             nbrConsultations: 0,
//             nbrExercices: 0,
//             resultats: []));
//       }

//       for (FicheGrammaire fiche in _fichesGrammairePC) {
//         _user.travailFichesGrammairePC.add(TravailFicheGrammaire(
//             ref: fiche.ref,
//             datederniereConsultation: DateTime.fromMicrosecondsSinceEpoch(0),
//             nbrConsultations: 0,
//             nbrExercices: 0,
//             resultats: []));
//       }
//       _user.init = true;
//       try {
//         await _db.updateDocument(
//             databaseId: dBId,
//             collectionId: colUtilisateurs,
//             documentId: _user.userId,
//             data: _user.toJson());
//       } catch (e) {
//         print('La mise a jour na pas fonctionné : $e');
//       }
//     }
//   }

//   Future<void> sauvegardeUtilisateur() async {
//     if (_needSaving == true) {
//       try {
//         await _db.updateDocument(
//             databaseId: dBId,
//             collectionId: colUtilisateurs,
//             documentId: _user.userId,
//             data: _user.toJson());
//         _needSaving = false;
//       } catch (e) {
//         print(
//             "La sauvegarde des fiches travail grammaire n'a pas fonctionné : $e");
//       }
//     }
//   }

//   void setPseudo(String reference) {
//     _user.pseudo = reference;
//     notifyListeners();
//   }

//   void setAvatar(String reference) {
//     _user.avatar = reference;
//     notifyListeners();
//   }

//   void initialisationTest() {
//     _supportsUtilises.clear();
//     _bufferListeCEA1.clear();
//     _bufferListeCEA2.clear();
//     _bufferListeCEA2p.clear();
//     _bufferListeCEB1.clear();
//     _bufferListeCOA1.clear();
//     _bufferListeCOA2.clear();
//     _bufferListeCOA2p.clear();
//     _bufferListeCOB1.clear();
//     _bufferListeCLA1.clear();
//     _bufferListeCLA2.clear();
//     _bufferListeCLA2p.clear();
//     _bufferListeCLB1.clear();

//     _testEvalangue = TestEvalangue(
//         refTest: (_user.indexTest + 1).toString(),
//         date: DateTime.now(),
//         resultatsItemCE: [],
//         resultatsItemCO: [],
//         resultatsItemCL: [],
//         nbQrCE: 0,
//         nbQrCO: 0,
//         nbQrCL: 0,
//         nbErrCE: 0,
//         nbErrCL: 0,
//         nbErrCO: 0,
//         nbQnrCO: 0,
//         nbQnrCE: 0,
//         nbQnrCL: 0,
//         niveauCO: "Inconnu",
//         niveauCE: "Inconnu",
//         niveauCL: "inconnu",
//         niveauGL: "Inconnu",
//         scoreCO: 0,
//         scoreCE: 0,
//         scoreCL: 0,
//         scoreGL: 0,
//         dureeCO: 0,
//         dureeCE: 0,
//         dureeCL: 0);

//     _bufferListeCEA1 = List.of(itemRefCEA1);
//     _bufferListeCEA2 = List.of(itemRefCEA2);
//     _bufferListeCEA2p = List.of(itemRefCEA2p);
//     _bufferListeCEB1 = List.of(itemRefCEB1);

//     _bufferListeCOA1 = List.of(itemRefCOA1);
//     _bufferListeCOA2 = List.of(itemRefCOA2);
//     _bufferListeCOA2p = List.of(itemRefCOA2p);
//     _bufferListeCOB1 = List.of(itemRefCOB1);

//     _bufferListeCLA1 = List.of(itemRefCLA1);
//     _bufferListeCLA2 = List.of(itemRefCLA2);
//     _bufferListeCLA2p = List.of(itemRefCLA2p);
//     _bufferListeCLB1 = List.of(itemRefCLB1);

//     // for (TestEvalangue _test in _user.testsEvalangue) {
//     //   print('CHANGEMENT TEST');
//     //   for (ResultatItem _item in _test.resultatsItemCE) {
//     //     // print(
//     //     //     'Voici resultat : ${DateTime.now().difference(_item.date).inDays}');
//     //     if (_item.resultat > 0 &&
//     //         DateTime.now().difference(_item.date).inDays < 10) {
//     //       print('Voici la ref : ${_item.refItem}');
//     //       print('Voici resultat : ${_item.reponse}');
//     //       print('Voici resultat : ${_item.resultat}');
//     //       if (_item.refItem[2] == "A" && _item.refItem[3] == "1") {
//     //         _listeExclusCEA1.add(listeCEA1
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCEA1
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //         print('A1');
//     //       }
//     //       if (_item.refItem[2] == "A" &&
//     //           _item.refItem[3] == "2" &&
//     //           _item.refItem[4] != "p") {
//     //         _listeExclusCEA2.add(listeCEA2
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCEA2
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //         print('A2');
//     //       }
//     //       if (_item.refItem[4] == "p") {
//     //         _listeExclusCEA2p.add(listeCEA2p
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCEA2p
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //         print('A2p');
//     //       }
//     //       if (_item.refItem[2] == "B") {
//     //         _listeExclusCEB1.add(listeCEB1
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCEB1
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //         print("B1");
//     //       }
//     //     }
//     //   }

//     //   for (ResultatItem _item in _test.resultatsItemCO) {
//     //     if (_item.resultat > 0 &&
//     //         DateTime.now().difference(_item.date).inDays < 10) {
//     //       if (_item.refItem[2] == "A" && _item.refItem[3] == "1") {
//     //         _listeExclusCOA1.add(listeCOA1
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCOA1
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //       } else if (_item.refItem[3] == "2" && _item.refItem[4] != "p") {
//     //         _listeExclusCOA2.add(listeCOA2
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCOA2
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //       } else if (_item.refItem[4] != "p") {
//     //         _listeExclusCOA2p.add(listeCOA2p
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCOA2p
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //       } else {
//     //         _listeExclusCOB1.add(listeCOB1
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCOB1
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //       }
//     //     }
//     //   }
//     //   for (ResultatItem _item in _test.resultatsItemCL) {
//     //     if (_item.resultat > 0 &&
//     //         DateTime.now().difference(_item.date).inDays < 10) {
//     //       if (_item.refItem[2] == "A" && _item.refItem[3] == "1") {
//     //         _listeExclusCLA1.add(listeCLA1
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCLA1
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //       }
//     //       if (_item.refItem[3] == "2" && _item.refItem[4] != "p") {
//     //         _listeExclusCLA2.add(listeCLA2
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCLA2
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //       }
//     //       if (_item.refItem[4] == "p") {
//     //         _listeExclusCLA2p.add(listeCLA2p
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCLA2p
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //       }

//     //       if (_item.refItem[2] == "B") {
//     //         _listeExclusCLB1.add(listeCLB1
//     //             .firstWhere((element) => element.ref == _item.refItem));
//     //         _bufferListeCLB1
//     //             .removeWhere((element) => element.ref == _item.refItem);
//     //       }
//     //     }
//     //   }
//     // }
//     epreuveCEFini = false;
//     epreuveCOFini = false;
//     epreuveCLFini = false;
//   }

//   setEpreuveCompErreur(Epreuve epreuve, int index) async {
//     _epreuve = epreuve;
//     _indexTest = index;
//     if (_epreuve == Epreuve.cE) {
//       _aL = "compréhension écrite";
//       listeResultatErreurs.clear();
//       listeItemErreurs.clear();
//       for (ResultatItem result in _user.testsEvalangue[index].resultatsItemCE) {
//         if (result.resultat < 1) {
//           listeResultatErreurs.add(result);
//           var item = await getItem(result.refItem);
//           listeItemErreurs.add(item);
//         }
//       }
//       print(
//           "Voici la taille de la liste des items erronnés en CE : ${listeItemErreurs.length}");
//     } else if (_epreuve == Epreuve.cO) {
//       _aL = "oral comprehension";
//       listeResultatErreurs.clear();
//       listeItemErreurs.clear();
//       for (ResultatItem result in _user.testsEvalangue[index].resultatsItemCO) {
//         if (result.resultat < 1) {
//           listeResultatErreurs.add(result);
//           var item = await getItem(result.refItem);
//           listeItemErreurs.add(item);
//         }
//       }
//     } else {
//       _aL = "grammar & vocabulary";
//       listeResultatErreurs.clear();
//       listeItemErreurs.clear();
//       for (ResultatItem result in _user.testsEvalangue[index].resultatsItemCL) {
//         if (result.resultat < 1) {
//           listeResultatErreurs.add(result);
//           var item = await getItem(result.refItem);
//           listeItemErreurs.add(item);
//         }
//       }
//     }
//   }

//   setEpreuve(Epreuve epreuve) async {
//     _itemsEpreuveEnCours.clear();
//     _derouleTest = Deroule.enCours;
//     partie = Partie.enCours;
//     _epreuve = epreuve;
//     _numeroPartie = 1;
//     _indexQuestion = 1;
//     _numeroQuestion = 1;
//     _niveauItem = 2;
//     _debut = DateTime.now();
//     _scoreTest = 0;
//     _duree = 0;
//     _skipMode = false;
//     _skipEnabled = true;
//     _skipList.clear();
//     await _selectionItem(_epreuve, _niveauItem);
//     notifyListeners();
//   }

//   verificationReponse(int reponse) async {
//     print('Reponse : $reponse');
//     _resultatItem = 0;
//     if (reponse > 0) {
//       if (_itemEvalangueView.choixMelanges[reponse - 1] ==
//           _itemSelectionne.repCor) {
//         _resultatItem = _niveauItem == 1
//             ? 1
//             : _niveauItem == 2
//                 ? 2
//                 : _niveauItem == 3
//                     ? 3
//                     : 4;
//         _scoreTest = _scoreTest + _niveauItem;
//         if (_niveauItem == 1) {
//           _niveauItem = 2;
//         } else if (_niveauItem == 2) {
//           _niveauItem = 3;
//         } else if (_niveauItem == 3) {
//           _niveauItem = 4;
//         }
//       } else {
//         _resultatItem = 0;
//         if (_niveauItem == 2) {
//           _niveauItem = 1;
//         } else if (_niveauItem == 3) {
//           _niveauItem = 2;
//         } else if (_niveauItem == 4) {
//           _niveauItem = 3;
//         }
//       }
//     } else if (reponse == 0) {
//       _resultatItem = 0;
//       if (_niveauItem == 2) {
//         _niveauItem = 1;
//       } else if (_niveauItem == 3) {
//         _niveauItem = 2;
//       } else if (_niveauItem == 4) {
//         _niveauItem = 3;
//       }
//     } else if (reponse == -1) {
//       _resultatItem = 0;
//       if (_niveauItem > 1) {
//         if (_niveauItem == 2) {
//           _niveauItem = 1;
//         } else if (_niveauItem == 3) {
//           _niveauItem = 2;
//         } else if (_niveauItem == 4) {
//           _niveauItem = 3;
//         }
//       }
//     }
//     if (_skipEnabled == true) {
//       if (_epreuve == Epreuve.cE) {
//         _testEvalangue.resultatsItemCE.add(ResultatItem(
//             refItem: _itemSelectionne.ref,
//             date: DateTime.now(),
//             resultat: _resultatItem,
//             reponse: reponse == 0
//                 ? "non répondu"
//                 : reponse == -1
//                     ? "skip"
//                     : _itemEvalangueView.choixMelanges[reponse - 1]));
//       } else if (_epreuve == Epreuve.cO) {
//         _testEvalangue.resultatsItemCO.add(ResultatItem(
//             refItem: _itemSelectionne.ref,
//             date: DateTime.now(),
//             resultat: _resultatItem,
//             reponse: reponse == 0
//                 ? "non répondu"
//                 : reponse == -1
//                     ? "skip"
//                     : _itemEvalangueView.choixMelanges[reponse - 1]));
//       } else if (_epreuve == Epreuve.cL) {
//         _testEvalangue.resultatsItemCL.add(ResultatItem(
//             refItem: _itemSelectionne.ref,
//             date: DateTime.now(),
//             resultat: _resultatItem,
//             reponse: reponse == 0
//                 ? "non répondu"
//                 : reponse == -1
//                     ? "skip"
//                     : _itemEvalangueView.choixMelanges[reponse - 1]));
//       }
//       if (_indexQuestion < 5 && _numeroPartie <= 3) {
//         _indexQuestion++;
//         if (reponse != -1) {
//           _numeroQuestion++;
//         }
//         print("Voici niveau ITEM : $_niveauItem");
//         await _selectionItem(epreuve, _niveauItem);
//       } else if (_skipList.isEmpty) {
//         _fin = DateTime.now();
//         partie = Partie.terminee;
//         _duree = _fin.difference(_debut).inSeconds;
//       } else if (_skipList.isNotEmpty) {
//         _skipEnabled = false;
//         selectSkippedItem();
//       }
//     } else {
//       if (_epreuve == Epreuve.cE) {
//         int index = _testEvalangue.resultatsItemCE.indexOf(_testEvalangue
//             .resultatsItemCE
//             .firstWhere((element) => element.refItem == _itemSelectionne.ref));
//         print('Voici index de la question à remplacer : $index');
//         _testEvalangue.resultatsItemCE[index] = ResultatItem(
//             refItem: _itemSelectionne.ref,
//             date: DateTime.now(),
//             resultat: _resultatItem,
//             reponse: reponse == 0
//                 ? "non répondu"
//                 : reponse == -1
//                     ? "skip"
//                     : _itemEvalangueView.choixMelanges[reponse - 1]);
//       }
//       if (_epreuve == Epreuve.cO) {
//         int index = _testEvalangue.resultatsItemCO.indexOf(_testEvalangue
//             .resultatsItemCO
//             .firstWhere((element) => element.refItem == _itemSelectionne.ref));
//         print('Voici index de la question à remplacer : $index');
//         _testEvalangue.resultatsItemCO[index] = ResultatItem(
//             refItem: _itemSelectionne.ref,
//             date: DateTime.now(),
//             resultat: _resultatItem,
//             reponse: reponse == 0
//                 ? "non répondu"
//                 : reponse == -1
//                     ? "skip"
//                     : _itemEvalangueView.choixMelanges[reponse - 1]);
//       }
//       if (_epreuve == Epreuve.cL) {
//         int index = _testEvalangue.resultatsItemCL.indexOf(_testEvalangue
//             .resultatsItemCL
//             .firstWhere((element) => element.refItem == _itemSelectionne.ref));
//         print('Voici index de la question à remplacer : $index');
//         _testEvalangue.resultatsItemCL[index] = ResultatItem(
//             refItem: _itemSelectionne.ref,
//             date: DateTime.now(),
//             resultat: _resultatItem,
//             reponse: reponse == 0
//                 ? "non répondu"
//                 : reponse == -1
//                     ? "skip"
//                     : _itemEvalangueView.choixMelanges[reponse - 1]);
//       }
//       // _numeroQuestion++;
//       _skipList.removeAt(0);
//       selectSkippedItem();
//     }
//     notifyListeners();
//   }

//   void changePart() {
//     if (_scoreTest <= _numeroPartie * 3) {
//       _niveauItem = 1;
//     } else if (_scoreTest <= _numeroPartie * 7) {
//       _niveauItem = 2;
//     } else if (_scoreTest <= _numeroPartie * 9) {
//       _niveauItem = 3;
//     } else {
//       _niveauItem = 4;
//     }
//     print(
//         "C'est la partie : $_numeroPartie. Le scoretest : $_scoreTest. Niveau Item : $_niveauItem");
//     _skipList.clear();
//     _skipEnabled = true;
//     if (_numeroPartie < 3) {
//       partie = Partie.enCours;
//       _numeroPartie++;
//       _numeroQuestion = 1;
//       _indexQuestion = 1;
//       _selectionItem(_epreuve, _niveauItem);
//     } else {
//       partie = Partie.terminee;
//     }
//     notifyListeners();
//   }

//   void calculNiveau() async {
//     double _calculScoreGeneral = 0;

//     if (_scoreTest >= 0) {
//       _niveauAL = "A1-";
//     }
//     if (_scoreTest >= 8) {
//       _niveauAL = "A1";
//     }
//     if (_scoreTest >= 10) {
//       _niveauAL = "A1+";
//     }
//     if (_scoreTest >= 14) {
//       _niveauAL = "A2-";
//     }
//     if (_scoreTest >= 18) {
//       _niveauAL = "A2";
//     }
//     if (_scoreTest >= 25) {
//       _niveauAL = "A2+";
//     }
//     if (_scoreTest >= 40) {
//       _niveauAL = "B1-";
//     }
//     if (_scoreTest >= 50 && _scoreTest < 57) {
//       _niveauAL = "B1";
//     } else if (_scoreTest >= 57) {
//       _niveauAL = "B1+";
//     }
//     if (_epreuve == Epreuve.cE) {
//       _testEvalangue.niveauCE = _niveauAL;
//       _testEvalangue.scoreCE = _scoreTest;
//       _testEvalangue.dureeCE = _duree;
//       for (ResultatItem item in _testEvalangue.resultatsItemCE) {
//         if (item.resultat == 0 && item.reponse != "non répondu") {
//           _testEvalangue.nbErrCE++;
//         } else if (item.reponse == "non répondu") {
//           _testEvalangue.nbQnrCE++;
//         } else if (item.resultat > 0) {
//           _testEvalangue.nbQrCE++;
//         }
//       }
//       epreuveCEFini = true;
//     } else if (_epreuve == Epreuve.cO) {
//       _testEvalangue.niveauCO = _niveauAL;
//       _testEvalangue.scoreCO = _scoreTest;
//       _testEvalangue.dureeCO = _duree;
//       for (ResultatItem item in _testEvalangue.resultatsItemCO) {
//         if (item.resultat == 0) {
//           _testEvalangue.nbErrCO++;
//         } else if (item.resultat == -1) {
//           _testEvalangue.nbQnrCO++;
//         } else if (item.resultat > 0) {
//           _testEvalangue.nbQrCO++;
//         }
//       }
//       epreuveCOFini = true;
//     } else if (_epreuve == Epreuve.cL) {
//       _testEvalangue.niveauCL = _niveauAL;
//       _testEvalangue.scoreCL = _scoreTest;
//       _testEvalangue.dureeCL = _duree;
//       for (ResultatItem item in _testEvalangue.resultatsItemCL) {
//         if (item.resultat == 0) {
//           _testEvalangue.nbErrCL++;
//         } else if (item.resultat == -1) {
//           _testEvalangue.nbQnrCL++;
//         } else if (item.resultat > 0) {
//           _testEvalangue.nbQrCL++;
//         }
//       }
//       epreuveCLFini = true;
//     }
//     print(
//         "Mon score : $_scoreTest   LE RESULTAT DE MON TEST DE POSITIONNEMENT : $_niveauAL");
//     if (epreuveCEFini == true &&
//         epreuveCOFini == true &&
//         epreuveCLFini == true) {
//       _testEvalangue.scoreGL = _testEvalangue.scoreCE +
//           _testEvalangue.scoreCL +
//           _testEvalangue.scoreCO;

//       if (_testEvalangue.scoreGL < 15) {
//         _testEvalangue.niveauGL = "A1 non atteint";
//       }
//       if (_testEvalangue.scoreGL >= 15) {
//         _testEvalangue.niveauGL = "A1-";
//       }
//       if (_testEvalangue.scoreGL >= 24) {
//         _testEvalangue.niveauGL = "A1";
//       }
//       if (_testEvalangue.scoreGL >= 30) {
//         _testEvalangue.niveauGL = "A1+";
//       }
//       if (_testEvalangue.scoreGL >= 42) {
//         _testEvalangue.niveauGL = "A2-";
//       }
//       if (_testEvalangue.scoreGL >= 60) {
//         _testEvalangue.niveauGL = "A2";
//       }
//       if (_testEvalangue.scoreGL >= 75) {
//         _testEvalangue.niveauGL = "A2+";
//       }
//       if (_testEvalangue.scoreGL >= 120) {
//         _testEvalangue.niveauGL = "B1-";
//       }
//       if (_testEvalangue.scoreGL >= 150 && _testEvalangue.scoreGL < 171) {
//         _testEvalangue.niveauGL = "B1";
//       } else if (_testEvalangue.scoreGL >= 171) {
//         _testEvalangue.niveauGL = "B1+";
//       }
//       _user.indexTest++;
//       _testEvalangue.refTest = _user.indexTest.toString();
//       print('userscoreGeneral : ${_user.scoreGeneral}');
//       _user.scoreGeneral = _user.scoreGeneral + _testEvalangue.scoreGL;
//       _user.testsEvalangue.add(_testEvalangue);
//       print('userscoreGeneral : ${_user.scoreGeneral}');
//       print('Nombre de test : ${_user.testsEvalangue.length}');

//       _calculScoreGeneral = _user.scoreGeneral / _user.testsEvalangue.length;

//       if (_calculScoreGeneral < 15) {
//         _user.niveauGeneral = "A1 non atteint";
//       }
//       if (_calculScoreGeneral >= 15) {
//         _user.niveauGeneral = "A1-";
//       }
//       if (_calculScoreGeneral >= 24) {
//         _user.niveauGeneral = "A1";
//       }
//       if (_calculScoreGeneral >= 30) {
//         _user.niveauGeneral = "A1+";
//       }
//       if (_calculScoreGeneral >= 42) {
//         _user.niveauGeneral = "A2-";
//       }
//       if (_calculScoreGeneral >= 60) {
//         _user.niveauGeneral = "A2";
//       }
//       if (_calculScoreGeneral >= 75) {
//         _user.niveauGeneral = "A2+";
//       }
//       if (_calculScoreGeneral >= 120) {
//         _user.niveauGeneral = "B1-";
//       }
//       if (_calculScoreGeneral >= 150 && _calculScoreGeneral < 171) {
//         _user.niveauGeneral = "B1";
//       } else if (_calculScoreGeneral >= 171) {
//         _user.niveauGeneral = "B1+";
//       }
//       notifyListeners();
//       try {
//         List mesTests =
//             _user.testsEvalangue.map((e) => jsonEncode(e.toJson())).toList();
//         print("La taille de la liste : ${mesTests.length}");
//         await _db.updateDocument(
//             databaseId: dBId,
//             collectionId: colUtilisateurs,
//             documentId: _user.userId,
//             data: {
//               'testsEvalangue': mesTests,
//               'indexTest': _user.indexTest,
//               'scoreGeneral': _user.scoreGeneral,
//               'niveauGeneral': _user.niveauGeneral,
//               'dernierTest': DateTime.now().toIso8601String(),
//             });
//       } catch (e) {
//         print("L'enregistrement du test n'a pas fonctionnné");
//       }
//     }
//   }

// // Future<void> sauvegardeCarnets() async {
// //     List _myListCwB =
// //         _user.carnetWordBank.map((e) => jsonEncode(e.toJson())).toList();
// //     List _myListCL =
// //         _user.carnetListes.map((e) => jsonEncode(e.toJson())).toList();
// //     try {
// //       await _db.updateDocument(
// //         databaseId: '63230503737ff3f3cdf9',
// //         collectionId: 'users',
// //         documentId: user.userId,
// //         data: {
// //           'carnetWordBank': _myListCwB,
// //           'carnetListes': _myListCL,
// //           'indexListePerso': _user.indexListePerso,
// //           'indexListeThematique': _user.indexListeThematique,
// //           'indexListeProf': _user.indexListeProf
// //         },
// //       );

//   _selectionItem(Epreuve epreuve, int niveauItem) async {
//     Storage storage = Storage(_client);
//     bool itemTrouve = false;
//     print('Voici la liste des supports utilisés   : $_supportsUtilises');
//     print(
//         'Voici la longueur de la liste _listExclusCEA1 : ${_listeExclusCEA1.length}');
//     print(
//         'Voici la longueur de la liste _listExclusCEA2 : ${_listeExclusCEA2.length}');
//     print(
//         'Voici la longueur de la liste _listExclusCEA2+ : ${_listeExclusCEA2p.length}');
//     if (epreuve == Epreuve.cE) {
//       if (niveauItem == 1) {
//         _bufferListeCEA1.shuffle();

//         for (ItemRef item in _bufferListeCEA1) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             print('Il y a des supports disponibles directement en A1');
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//               _listeExclusCEA1.add(item);
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCEA1) {
//             if (_listeExclusCEA1.contains(item) == false) {
//               print(
//                   'Il y a des items A1 dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCEA1.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCEA1.isNotEmpty) {
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en CEA1');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCEA1[random.nextInt(_listeExclusCEA1.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCEA1) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           itemTrouve = true;
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCEA1');
//           _itemRefSelectionne = _bufferListeCEA1[0];
//         }
//       }
//       if (niveauItem == 2) {
//         _bufferListeCEA2.shuffle();
//         for (ItemRef item in _bufferListeCEA2) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             print('Il y a des supports disponibles directement en A2');
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//               _listeExclusCEA2.add(item);
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCEA2) {
//             if (_listeExclusCEA2.contains(item) == false) {
//               print(
//                   'Il y a des items A2 dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCEA2.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCEA2.isNotEmpty) {
//           print(
//               'Voici la longueur de la liste _listExclusCEA2 : ${_listeExclusCEA2.length}');
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en CEA2');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCEA2[random.nextInt(_listeExclusCEA2.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCEA2) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCEA2');
//           itemTrouve = true;
//           _itemRefSelectionne = _bufferListeCEA2[0];
//         }
//       }
//       if (niveauItem == 3) {
//         _bufferListeCEA2p.shuffle();
//         for (ItemRef item in _bufferListeCEA2p) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//               _listeExclusCEA2p.add(item);
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCEA2p) {
//             if (_listeExclusCEA2p.contains(item) == false) {
//               print(
//                   'Il y a des items A2+ dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCEA2p.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCEA2p.isNotEmpty) {
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en CEA2+');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCEA2p[random.nextInt(_listeExclusCEA2p.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCEA2p) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCEA2+');
//           itemTrouve = true;
//           _itemRefSelectionne = _bufferListeCEA2p[0];
//         }
//       }
//       if (niveauItem == 4) {
//         _bufferListeCEB1.shuffle();
//         for (ItemRef item in _bufferListeCEB1) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCEB1) {
//             if (_listeExclusCEB1.contains(item) == false) {
//               print(
//                   'Il y a des items B1 dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCEB1.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCEB1.isNotEmpty) {
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en CEB1');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCEB1[random.nextInt(_listeExclusCEB1.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCEB1) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCEB1');
//           itemTrouve = true;
//           _itemRefSelectionne = _bufferListeCEB1[0];
//         }
//       }
//     }

//     if (epreuve == Epreuve.cO) {
//       if (niveauItem == 1) {
//         _bufferListeCOA1.shuffle();

//         for (ItemRef item in _bufferListeCOA1) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             print('Il y a des supports disponibles directement en A1');
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//               _listeExclusCOA1.add(item);
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCOA1) {
//             if (_listeExclusCOA1.contains(item) == false) {
//               print(
//                   'Il y a des items A1 dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCOA1.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCOA1.isNotEmpty) {
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en COA1');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCOA1[random.nextInt(_listeExclusCOA1.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCOA1) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           itemTrouve = true;
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCOA1');
//           _itemRefSelectionne = _bufferListeCOA1[0];
//         }
//       }
//       if (niveauItem == 2) {
//         _bufferListeCOA2.shuffle();
//         for (ItemRef item in _bufferListeCOA2) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             print('Il y a des supports disponibles directement en A2');
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//               _listeExclusCOA2.add(item);
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCOA2) {
//             if (_listeExclusCOA2.contains(item) == false) {
//               print(
//                   'Il y a des items A2 dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCOA2.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCOA2.isNotEmpty) {
//           print(
//               'Voici la longueur de la liste _listExclusCEA2 : ${_listeExclusCOA2.length}');
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en COA2');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCOA2[random.nextInt(_listeExclusCOA2.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCOA2) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCOA2');
//           itemTrouve = true;
//           _itemRefSelectionne = _bufferListeCOA2[0];
//         }
//       }
//       if (niveauItem == 3) {
//         _bufferListeCOA2p.shuffle();
//         for (ItemRef item in _bufferListeCOA2p) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//               _listeExclusCOA2p.add(item);
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCOA2p) {
//             if (_listeExclusCOA2p.contains(item) == false) {
//               print(
//                   'Il y a des items A2+ dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCOA2p.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCOA2p.isNotEmpty) {
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en COA2+');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCOA2p[random.nextInt(_listeExclusCOA2p.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCOA2p) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCOA2+');
//           itemTrouve = true;
//           _itemRefSelectionne = _bufferListeCOA2p[0];
//         }
//       }
//       if (niveauItem == 4) {
//         _bufferListeCOB1.shuffle();
//         for (ItemRef item in _bufferListeCOB1) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCOB1) {
//             if (_listeExclusCOB1.contains(item) == false) {
//               print(
//                   'Il y a des items B1 dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCOB1.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCOB1.isNotEmpty) {
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en COB1');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCOB1[random.nextInt(_listeExclusCOB1.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCOB1) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCOB1');
//           itemTrouve = true;
//           _itemRefSelectionne = _bufferListeCOB1[0];
//         }
//       }
//     }
//     if (epreuve == Epreuve.cL) {
//       if (niveauItem == 1) {
//         _bufferListeCLA1.shuffle();

//         for (ItemRef item in _bufferListeCLA1) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             print('Il y a des supports disponibles directement en A1');
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//               _listeExclusCLA1.add(item);
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCLA1) {
//             if (_listeExclusCLA1.contains(item) == false) {
//               print(
//                   'Il y a des items A1 dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCLA1.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCLA1.isNotEmpty) {
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en CEA1');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCLA1[random.nextInt(_listeExclusCLA1.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCLA1) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           itemTrouve = true;
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListClA1');
//           _itemRefSelectionne = _bufferListeCLA1[0];
//         }
//       }
//       if (niveauItem == 2) {
//         _bufferListeCLA2.shuffle();
//         for (ItemRef item in _bufferListeCLA2) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             print('Il y a des supports disponibles directement en A2');
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//               _listeExclusCLA2.add(item);
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCLA2) {
//             if (_listeExclusCLA2.contains(item) == false) {
//               print(
//                   'Il y a des items A2 dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCLA2.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCLA2.isNotEmpty) {
//           print(
//               'Voici la longueur de la liste _listExclusCEA2 : ${_listeExclusCLA2.length}');
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en CLA2');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCLA2[random.nextInt(_listeExclusCLA2.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCLA2) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCLA2');
//           itemTrouve = true;
//           _itemRefSelectionne = _bufferListeCLA2[0];
//         }
//       }
//       if (niveauItem == 3) {
//         _bufferListeCLA2p.shuffle();
//         for (ItemRef item in _bufferListeCLA2p) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//               _listeExclusCLA2p.add(item);
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCLA2p) {
//             if (_listeExclusCLA2p.contains(item) == false) {
//               print(
//                   'Il y a des items A2+ dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCLA2p.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCLA2p.isNotEmpty) {
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en CLA2+');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCLA2p[random.nextInt(_listeExclusCLA2p.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCLA2p) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCLA2+');
//           itemTrouve = true;
//           _itemRefSelectionne = _bufferListeCLA2p[0];
//         }
//       }
//       if (niveauItem == 4) {
//         _bufferListeCLB1.shuffle();
//         for (ItemRef item in _bufferListeCLB1) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             if (itemTrouve == false) {
//               itemTrouve = true;
//               _itemRefSelectionne = item;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCLB1) {
//             if (_listeExclusCLB1.contains(item) == false) {
//               print(
//                   'Il y a des items B1 dispo mais avec un support déjà utilisé');
//               if (itemTrouve == false) {
//                 itemTrouve = true;
//                 _itemRefSelectionne = item;
//                 _listeExclusCLB1.add(item);
//               }
//             }
//           }
//         }
//         if (itemTrouve == false && _listeExclusCLB1.isNotEmpty) {
//           print(
//               'Il ny a pas de support disponible, je regarde dans les exclusions en CLB1');
//           final random = Random();
//           _itemRefSelectionne =
//               _listeExclusCLB1[random.nextInt(_listeExclusCLB1.length)];
//           itemTrouve = true;
//         }
//         if (itemTrouve == false) {
//           for (ItemRef item in _bufferListeCLB1) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemRefSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           print(
//               'Je suis arrivé à la dernière solution de choix, je prends le premiers élément de _bufferListCLB1');
//           itemTrouve = true;
//           _itemRefSelectionne = _bufferListeCLB1[0];
//         }
//       }

//       /* if (niveauItem == 1) {
//         _bufferListeCLA1.shuffle();
//         for (ItemEvalangue item in _bufferListeCLA1) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             itemTrouve = true;
//             _itemSelectionne = item;
//           }
//         }
//         if (itemTrouve == false && _listeExclusCLA1.isNotEmpty) {
//           final random = Random();
//           _itemSelectionne =
//               _listeExclusCLA1[random.nextInt(_listeExclusCLA1.length)];
//         }
//         if (itemTrouve == false) {
//           for (ItemEvalangue item in _bufferListeCLA1) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           itemTrouve = true;
//           _itemSelectionne = _bufferListeCLA1[0];
//         }
//       }
//       if (niveauItem == 2) {
//         _bufferListeCLA2.shuffle();
//         for (ItemEvalangue item in _bufferListeCLA2) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             itemTrouve = true;
//             _itemSelectionne = item;
//           }
//         }
//         if (itemTrouve == false && _listeExclusCLA2.isNotEmpty) {
//           final random = Random();
//           itemTrouve = true;
//           _itemSelectionne =
//               _listeExclusCLA2[random.nextInt(_listeExclusCLA2.length)];
//         }
//         if (itemTrouve == false) {
//           for (ItemEvalangue item in _bufferListeCLA2) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           itemTrouve = true;
//           _itemSelectionne = _bufferListeCLA2[0];
//         }
//       }
//       if (niveauItem == 3) {
//         _bufferListeCLA2p.shuffle();
//         for (ItemEvalangue item in _bufferListeCLA2p) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             itemTrouve = true;
//             _itemSelectionne = item;
//           }
//         }
//         if (itemTrouve == false && _listeExclusCLA2p.isNotEmpty) {
//           final random = Random();
//           _itemSelectionne =
//               _listeExclusCLA2[random.nextInt(_listeExclusCLA2.length)];
//         }
//         if (itemTrouve == false) {
//           for (ItemEvalangue item in _bufferListeCLA2p) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               _itemSelectionne = item;
//               itemTrouve = true;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           itemTrouve = true;
//           _itemSelectionne = _bufferListeCLA2p[0];
//         }
//       }
//       if (niveauItem == 4) {
//         _bufferListeCLB1.shuffle();
//         for (ItemEvalangue item in _bufferListeCLB1) {
//           if (_supportsUtilises.contains(item.refSupport) == false) {
//             itemTrouve = true;
//             _itemSelectionne = item;
//           }
//         }
//         if (itemTrouve == false && _listeExclusCLB1.isNotEmpty) {
//           final random = Random();
//           _itemSelectionne =
//               _listeExclusCLB1[random.nextInt(_listeExclusCLB1.length)];
//         }
//         if (itemTrouve == false) {
//           for (ItemEvalangue item in _bufferListeCLB1) {
//             if (_itemsEpreuveEnCours.contains(item) == false) {
//               itemTrouve = true;
//               _itemSelectionne = item;
//             }
//           }
//         }
//         if (itemTrouve == false) {
//           itemTrouve = true;
//           _itemSelectionne = _bufferListeCLB1[0];
//         }
//       }*/
//     }
//     print("Voici la référence : ${_itemRefSelectionne.ref}");
//     print('Je suis juste avant le rappatriement de item');
//     _itemSelectionne = await getItem(_itemRefSelectionne.ref);
//     print("Je suis juste après le rappatriement de l'item");
//     _itemEvalangueView.choixMelanges.clear();

//     if (_supportsUtilises.contains(_itemSelectionne.refSupport) == false) {
//       _supportsUtilises.add(_itemSelectionne.refSupport);
//     }

//     if (_itemsEpreuveEnCours.contains(_itemSelectionne) == false) {
//       _itemsEpreuveEnCours.add(_itemSelectionne);
//     }
//     _itemEvalangueView.item = _itemSelectionne;
//     _itemEvalangueView.choixMelanges.addAll([
//       _itemSelectionne.ch1,
//       _itemSelectionne.ch2,
//       _itemSelectionne.ch3,
//       _itemSelectionne.repCor
//     ]);
//     _itemEvalangueView.choixMelanges.shuffle();

//     // A partir de l'item sélectionné : on va chercher dans le BUCKET le support de CE correspondant et on le met en mémoire
//     // On le retrouve ensuite en affichage avec image.memory

//     if (epreuve == Epreuve.cE) {
//       try {
//         fileSupportBytes = await storage.getFileDownload(
//             bucketId: "654351ace6f4688483f5",
//             fileId: _itemSelectionne.refSupport);
//       } catch (e) {
//         print('Download didnt work : $e');
//         print(_itemSelectionne.refSupport);
//       }
//     }

//     // A partir de l'item sélectionné : on va chercher dans le BUCKET le support de CO correspondant et on le met en mémoire
//     // On le retrouve ensuite en affichage avec image.memory

//     if (epreuve == Epreuve.cO) {
//       try {
//         audioSupportBytes = await storage.getFileDownload(
//             bucketId: "6547850cc6869767337b",
//             fileId: _itemSelectionne.refSupport);

//         if (Platform.isIOS) {
//           audioSupport = File(
//               '${(await getApplicationDocumentsDirectory()).path}/${_itemEvalangueView.item.refSupport}.mp3');
//           audioSupport.writeAsBytes(audioSupportBytes);
//         }

//         if (_itemSelectionne.audio) {
//           fileCh1Bytes = await storage.getFileDownload(
//               bucketId: "6547850cc6869767337b",
//               fileId: _itemEvalangueView.choixMelanges[0]);
//           fileCh2Bytes = await storage.getFileDownload(
//               bucketId: "6547850cc6869767337b",
//               fileId: _itemEvalangueView.choixMelanges[1]);
//           fileCh3Bytes = await storage.getFileDownload(
//               bucketId: "6547850cc6869767337b",
//               fileId: _itemEvalangueView.choixMelanges[2]);
//           fileCh4Bytes = await storage.getFileDownload(
//               bucketId: "6547850cc6869767337b",
//               fileId: _itemEvalangueView.choixMelanges[3]);

//           if (Platform.isIOS) {
//             ch1 = File(
//                 '${(await getApplicationDocumentsDirectory()).path}/${_itemEvalangueView.choixMelanges[0]}.mp3');

//             ch2 = File(
//                 '${(await getApplicationDocumentsDirectory()).path}/${_itemEvalangueView.choixMelanges[1]}.mp3');
//             ch3 = File(
//                 '${(await getApplicationDocumentsDirectory()).path}/${_itemEvalangueView.choixMelanges[2]}.mp3');
//             ch4 = File(
//                 '${(await getApplicationDocumentsDirectory()).path}/${_itemEvalangueView.choixMelanges[3]}.mp3');

//             ch1.writeAsBytes(fileCh1Bytes);
//             ch2.writeAsBytes(fileCh2Bytes);
//             ch3.writeAsBytes(fileCh3Bytes);
//             ch4.writeAsBytes(fileCh4Bytes);
//           }
//         }
//       } catch (e) {
//         print('Download didnt work : $e');
//       }
//     }

//     // try {

//     //   fileSupportTemp = _storage.getFileDownload(
//     //       bucketId: "637874340a80fb649653", fileId: "63dfc79f77a11525a033");
//     // } catch (e) {
//     //   print("Download didn't work : $e");
//     // }
//     print('Voici la liste des supports utilisés 2   : $_supportsUtilises');
//     print(
//         'Voici la longueur de la liste _listExclusCEA1 2: ${_listeExclusCEA1.length}');
//     print(
//         'Voici la longueur de la liste _listExclusCEA2 2: ${_listeExclusCEA2.length}');
//     for (ItemRef item in _listeExclusCEA2) {
//       print(
//           'Ref des exclus en A2 : ${item.ref}  et ref du support : ${item.refSupport}');
//     }
//     print(
//         'Voici la longueur de la liste _listExclusCEA2+ 2: ${_listeExclusCEA2p.length}');
//     notifyListeners();
//   }

//   void selectSkippedItem() {
//     if (_skipList.isNotEmpty) {
//       if (_skipEnabled == false && _indexQuestion < 5) {
//         _numeroQuestion++;
//       } else if (_indexQuestion == 5) {
//         _indexQuestion = 5 - _skipList.length;
//       }
//       if (_skipMode == true) {
//         _skipMode = false;
//       }
//       _itemSelectionne = _skipList[0];
//       _itemEvalangueView.choixMelanges.clear();
//       _itemEvalangueView.item = _itemSelectionne;
//       _itemEvalangueView.choixMelanges.addAll([
//         _itemSelectionne.ch1,
//         _itemSelectionne.ch2,
//         _itemSelectionne.ch3,
//         _itemSelectionne.repCor
//       ]);
//       _itemEvalangueView.choixMelanges.shuffle();
//     } else {
//       _fin = DateTime.now();
//       partie = Partie.terminee;
//       _duree = _duree + _fin.difference(_debut).inSeconds;
//     }
//     notifyListeners();
//   }

//   void skipItem() {
//     _skipMode = true;
//     if (_skipList.contains(_itemSelectionne) == false) {
//       _skipList.add(_itemSelectionne);
//     }
//     verificationReponse(-1);
//     notifyListeners();
//   }

//   Future<ItemEvalangue> envoiItem(String ref) async {
//     ItemEvalangue it = const ItemEvalangue(
//         ref: "ref",
//         niveau: "niveau",
//         audio: false,
//         refSupport: "refSupport",
//         actLangNiveau: 0,
//         question: "question",
//         repCor: "repCor",
//         ch1: "",
//         ch2: "",
//         ch3: "",
//         explications: "");
//     await getItem(ref);
//     // if (_epreuve == Epreuve.cE) {
//     //   if (ref.contains("CEA1") == true) {
//     //     it = listeCEA1.firstWhere((element) => element.ref == ref);
//     //   }
//     //   if (ref.contains("CEA2") == true && ref.contains("CEA2p") == false) {
//     //     it = listeCEA2.firstWhere((element) => element.ref == ref);
//     //   }
//     //   if (ref.contains("CEA2p") == true) {
//     //     it = listeCEA2p.firstWhere((element) => element.ref == ref);
//     //   }
//     //   if (ref.contains("CEB1") == true) {
//     //     it = listeCEB1.firstWhere((element) => element.ref == ref);
//     //   }
//     // }
//     // if (_epreuve == Epreuve.cL) {
//     //   if (ref.contains("A1") == true) {
//     //     it = listeCLA1.firstWhere((element) => element.ref == ref);
//     //   }
//     //   if (ref.contains("A2") == true && ref.contains("A2p") == false) {
//     //     it = listeCLA2.firstWhere((element) => element.ref == ref);
//     //   }
//     //   if (ref.contains("A2p") == true) {
//     //     it = listeCLA2p.firstWhere((element) => element.ref == ref);
//     //   }
//     //   if (ref.contains("B1") == true) {
//     //     it = listeCLB1.firstWhere((element) => element.ref == ref);
//     //   }
//     // }
//     // if (_epreuve == Epreuve.cO) {
//     //   if (ref.contains("COA1") == true) {
//     //     it = listeCOA1.firstWhere((element) => element.ref == ref);
//     //   }
//     //   if (ref.contains("COA2") == true && ref.contains("COA2p") == false) {
//     //     it = listeCOA2.firstWhere((element) => element.ref == ref);
//     //   }
//     //   if (ref.contains("COA2p") == true) {
//     //     it = listeCOA2p.firstWhere((element) => element.ref == ref);
//     //   }
//     //   if (ref.contains("COB1") == true) {
//     //     it = listeCOB1.firstWhere((element) => element.ref == ref);
//     //   }
//     // }
//     return it;
//   }

// // FICHES DE GRAMMAIRE

//   void checkNiveauDisponible({
//     required FicheGrammaire fiche,
//   }) {
//     _listNiveauDisponible.clear();

//     _bufferListeGrammaire.clear();
//     for (ItemRef item in itemRefCLA1) {
//       if (item.ref.contains(fiche.ref) == true) {
//         _bufferListeGrammaire.add(item);
//         _listNiveauDisponible.add('A1');
//       }
//     }

//     _bufferListeGrammaire.clear();
//     for (ItemRef item in itemRefCLA2) {
//       if (item.ref.contains(fiche.ref) == true) {
//         _bufferListeGrammaire.add(item);
//         _listNiveauDisponible.add('A2');
//       }
//     }

//     _bufferListeGrammaire.clear();
//     for (ItemRef item in itemRefCLA2p) {
//       if (item.ref.contains(fiche.ref) == true) {
//         _bufferListeGrammaire.add(item);
//         _listNiveauDisponible.add('A2+');
//       }
//     }

//     _bufferListeGrammaire.clear();
//     for (ItemRef item in itemRefCLB1) {
//       if (item.ref.contains(fiche.ref) == true) {
//         _bufferListeGrammaire.add(item);
//         _listNiveauDisponible.add('B1');
//       }
//     }

//     print(
//         'Voici la taille de _bufferListeGrammaire : ${_bufferListeGrammaire.length}');

//     print('Voici la liste des niveaux disponible : $_listNiveauDisponible');
//   }

//   createListeExoGrammaire(
//       {required FicheGrammaire fiche,
//       required String niveau,
//       required int index}) async {
//     _listItemRefExoGrammaire.clear();
//     _bufferListeGrammaire.clear();
//     _bufferExcluGrammaire.clear();
//     _indexFicheGrammaire = index;
//     _ficheSelectionnee = fiche;
//     exoGrammaireFini = false;
//     reponseCorrecte = false;
//     reponseValidee = false;
//     _niveauExo = niveau;
//     _scoreExo = 0;
//     print('Voici la longueur de la liste itemRefCLA1 : ${itemRefCLA1.length}');
//     if (niveau == "A1") {
//       _bufferListeGrammaire = List.of(itemRefCLA1);
//       _bufferExcluGrammaire = List.of(_listeExclusCLA1);
//     }
//     if (niveau == "A2") {
//       _bufferListeGrammaire = List.of(itemRefCLA2);
//       _bufferExcluGrammaire = List.of(_listeExclusCLA2);
//     }
//     if (niveau == "A2+") {
//       _bufferListeGrammaire = List.of(itemRefCLA2p);
//       _bufferExcluGrammaire = List.of(_listeExclusCLA2p);
//     }
//     if (niveau == "B1") {
//       _bufferListeGrammaire = List.of(itemRefCLB1);
//       _bufferExcluGrammaire = List.of(_listeExclusCLB1);
//     }
//     print(
//         "Voici la longueur de Buffer Liste Grammaire : ${_bufferListeGrammaire.length}");
//     print(
//         'La longueur de la liste des exclusions : ${_bufferExcluGrammaire.length}');

//     _bufferListeGrammaire.shuffle();

//     for (ItemRef item in _bufferListeGrammaire) {
//       print("Item REf : ${item.ref}");
//       if (item.ref.contains(fiche.ref) == true &&
//           _bufferExcluGrammaire.contains(item) == false &&
//           _listItemRefExoGrammaire.length < 5) {
//         _listItemRefExoGrammaire.add(item);
//         _bufferExcluGrammaire.add(item);
//         print("Voici la ref de l'item ajouté : ${item.ref}");
//       }
//     }
//     if (_listItemRefExoGrammaire.length < 5) {
//       _bufferExcluGrammaire.shuffle();
//       for (ItemRef item in _bufferExcluGrammaire) {
//         if (_listItemRefExoGrammaire.length < 5 &&
//             item.ref.contains(fiche.ref) == true) {
//           _listItemRefExoGrammaire.add(item);
//           print("Voici la ref de l'item exclu ajouté : ${item.ref}");
//         }
//       }
//     }
//     if (niveau == "A1") {
//       _listeExclusCLA1.clear();
//       _listeExclusCLA1 = List.of(_bufferExcluGrammaire);
//     }
//     if (niveau == "A2") {
//       _listeExclusCLA2.clear();
//       _listeExclusCLA2 = List.of(_bufferExcluGrammaire);
//     }
//     if (niveau == "A2+") {
//       _listeExclusCLA2p.clear();
//       _listeExclusCLA2p = List.of(_bufferExcluGrammaire);
//     }
//     if (niveau == "B1") {
//       _listeExclusCLB1.clear();
//       _listeExclusCLB1 = List.of(_bufferExcluGrammaire);
//     }
//     _numeroQuestion = 0;

//     for (ItemRef item in _listItemRefExoGrammaire) {
//       _listItemExoGrammaire.add(await getItem(item.ref));
//       print("Je remplis la liste des items de grammaire");
//     }

//     _listItemRefExoGrammaire.shuffle();
//   }

//   envoiItemExo() async {
//     _itemEvalangueView.choixMelanges.clear();
//     print("Longueur : ${_listItemRefExoGrammaire.length}");

//     _itemEvalangueView.item =
//         await getItem(_listItemRefExoGrammaire[_numeroQuestion].ref);
//     _itemEvalangueView.choixMelanges.addAll([
//       _itemEvalangueView.item.ch1,
//       _itemEvalangueView.item.ch2,
//       _itemEvalangueView.item.ch3,
//       _itemEvalangueView.item.repCor
//     ]);
//     _itemEvalangueView.choixMelanges.shuffle();
//   }

//   void verifierReponse(int reponse) {
//     reponseValidee = true;
//     print(
//         "Voici la réponse choisie : ${_itemEvalangueView.choixMelanges[reponse - 1]}");
//     print("Voici la réponse REP COR: ${_itemEvalangueView.item.repCor}");
//     if (_itemEvalangueView.choixMelanges[reponse - 1] ==
//         _itemEvalangueView.item.repCor) {
//       print('La réponse est correcte');
//       _scoreExo++;
//       reponseCorrecte = true;
//     } else {
//       print("C'est faux");
//     }
//     if (_numeroQuestion == _listItemRefExoGrammaire.length - 1) {
//       exoGrammaireFini = true;
//       if (_ficheSelectionnee.ref.contains('GN')) {
//         _user.travailFichesGrammaireGN[_indexFicheGrammaire].nbrExercices++;
//         _user.travailFichesGrammaireGN[_indexFicheGrammaire].resultats.add(
//           ResultatsGrammaire(
//               score: (_scoreExo.toDouble() * 100) /
//                   _listItemRefExoGrammaire.length,
//               date: DateTime.now(),
//               taille: _listItemRefExoGrammaire.length,
//               niveau: _niveauExo),
//         );
//       }
//       if (_ficheSelectionnee.ref.contains('GV')) {
//         _user.travailFichesGrammaireGV[_indexFicheGrammaire].nbrExercices++;
//         _user.travailFichesGrammaireGV[_indexFicheGrammaire].resultats.add(
//             ResultatsGrammaire(
//                 score: (_scoreExo.toDouble() * 100) /
//                     _listItemRefExoGrammaire.length,
//                 date: DateTime.now(),
//                 taille: _listItemRefExoGrammaire.length,
//                 niveau: _niveauExo));
//       }
//       if (_ficheSelectionnee.ref.contains('PC')) {
//         _user.travailFichesGrammairePC[_indexFicheGrammaire].nbrExercices++;
//         _user.travailFichesGrammairePC[_indexFicheGrammaire].resultats.add(
//             ResultatsGrammaire(
//                 score: (_scoreExo.toDouble() * 100) /
//                     _listItemRefExoGrammaire.length,
//                 date: DateTime.now(),
//                 taille: _listItemRefExoGrammaire.length,
//                 niveau: _niveauExo));
//       }
//       _needSaving = true;
//       sauvegardeUtilisateur();
//       _needSaving = false;
//     }
//     notifyListeners();
//   }

//   followingQuestion() async {
//     reponseValidee = false;
//     reponseCorrecte = false;
//     _numeroQuestion++;
//     await envoiItemExo();
//     notifyListeners();
//   }

//   void consultationGrammaire(int index, String type) {
//     _needSaving = true;
//     if (type == "GN") {
//       _user.travailFichesGrammaireGN[index].nbrConsultations++;
//       _user.travailFichesGrammaireGN[index].datederniereConsultation =
//           DateTime.now();
//     }
//     if (type == "GV") {
//       _user.travailFichesGrammaireGV[index].nbrConsultations++;
//       _user.travailFichesGrammaireGV[index].datederniereConsultation =
//           DateTime.now();
//     }
//     if (type == "PC") {
//       _user.travailFichesGrammairePC[index].nbrConsultations++;
//       _user.travailFichesGrammairePC[index].datederniereConsultation =
//           DateTime.now();
//     }
//     notifyListeners();
//   }

// //   void _sortBufferDicoList(_myList) {
// //     if (_selectedLanguage == Language.english) {
// //       _myList.sort((a, b) => wordBank[a]
// //           .main
// //           .toLowerCase()
// //           .compareTo(wordBank[b].main.toLowerCase()));
// //     } else if (_selectedLanguage == Language.french) {
// //       _myList.sort((a, b) => removeAccents(wordBank[a].mainFr.toUpperCase())
// //           .compareTo(removeAccents(wordBank[b].mainFr.toUpperCase())));
// //     }
// //   }

// // String generateRandomString(int length) {
// //   final _random = Random();
// //   const _availableChars =
// //       'ABCDEFGHIJKLMNPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvw0123456789';
// //   final randomString = List.generate(length,
// //           (index) => _availableChars[_random.nextInt(_availableChars.length)])
// //       .join();
// //   return randomString;
// // }
// // void _sortBufferCarnetList(_myList) {
// //   if (_selectedLanguage == Language.english) {
// //     _myList.sort((a, b) => wordBank[_bufferCarnetWordBank[a].idDico]
// //         .main
// //         .toUpperCase()
// //         .compareTo(
// //             wordBank[_bufferCarnetWordBank[b].idDico].main.toUpperCase()));
// //   } else if (_selectedLanguage == Language.french) {
// //     _myList.sort((a, b) => removeAccents(
// //             wordBank[_bufferCarnetWordBank[a].idDico].mainFr.toUpperCase())
// //         .compareTo(removeAccents(
// //             wordBank[_bufferCarnetWordBank[b].idDico].mainFr.toUpperCase())));
// //   }
// // }

// //   int levenshtein(String a, String b) {
// //     a = a.toUpperCase();
// //     b = b.toUpperCase();
// //     int sa = a.length;
// //     int sb = b.length;
// //     int i, j, cost, min1, min2, min3;
// //     int levenshtein;
// // // ignore: deprecated_member_use
// //     List<List<int>> d =
// //         List.generate(sa + 1, (int i) => List.generate(sb + 1, (int j) => 0));
// //     if (a.length == 0) {
// //       levenshtein = b.length;
// //       return (levenshtein);
// //     }
// //     if (b.length == 0) {
// //       levenshtein = a.length;
// //       return (levenshtein);
// //     }
// //     for (i = 0; i <= sa; i++) d[i][0] = i;
// //     for (j = 0; j <= sb; j++) d[0][j] = j;
// //     for (i = 1; i <= a.length; i++)
// //       for (j = 1; j <= b.length; j++) {
// //         if (a[i - 1] == b[j - 1])
// //           cost = 0;
// //         else
// //           cost = 1;
// //         min1 = (d[i - 1][j] + 1);
// //         min2 = (d[i][j - 1] + 1);
// //         min3 = (d[i - 1][j - 1] + cost);
// //         d[i][j] = min(min1, min(min2, min3));
// //       }
// //     levenshtein = d[a.length][b.length];
// //     return (levenshtein);
// //   }

// // double similarity(String a, String b) {
// //   double _similarity;
// //   a = a.toUpperCase();
// //   b = b.toUpperCase();
// //   _similarity = 1 - levenshtein(a, b) / (max(a.length, b.length));
// //   return (_similarity);
// // }
// }
