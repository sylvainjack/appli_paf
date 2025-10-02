import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';
//import 'package:appwrite/appwrite.dart';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'liste_modules.dart';

Future<void> main() async {
  // --- Demande du chemin du fichier CSV ---
  // final filePath = 'MODULESPAFCSV.csv'; // Mets ici ton chemin exact
  // final file = File(filePath);
  // if (!file.existsSync()) {
  //   print("Fichier introuvable : $filePath");
  //   return;
  // }

  // // --- Lecture du CSV ---
  // final input = file.openRead();
  // final fields = await input
  //     .transform(utf8.decoder)
  //     .transform(CsvToListConverter(fieldDelimiter: ";"))
  //     .toList();

  // if (fields.isEmpty) {
  //   print("Fichier CSV vide !");
  //   return;
  // }

  // final List<String> header = fields.first.map((e) => e.toString()).toList();
  // final dataRows = fields.sublist(1);

  // print('Nombre de lignes à traiter : ${dataRows.length}');
  // print(header);
  // print(dataRows[0]);
  // print(dataRows[1]);
  // print(dataRows[2]);
  // print("Longueur de headers : ${header.length}");
  // print("Longeur de DataRow : ${dataRows.length}");

  // --- Initialisation Appwrite ---
  final client = Client()
          .setEndpoint('https://fra.cloud.appwrite.io/v1') // ton endpoint
          .setProject('68d80b0d00062d3f47ed')
          .setKey(
              "standard_c1bb1ed2d40531fc7cf5ca6560b5b938bda4d83e4d0bb092378372afc8f2d9843b3feb97572530f330f01e490337907badf216c4ec73e3ab9869eec73f99a0ae6491040f022f607db5dbd6c4223ee3bd028016cfdc757b71f25e59d65bd44c1bdc7a595fb5d1c92e13f515bb01c49441d8b90eb9229787d25ca59b84b82dddb1") // ton project ID
      ; // clé serveur

  final tablesDB = TablesDB(client);
  final tableId = 'modules'; // ID de ta table module

  for (var module in listeModules) {
    try {
      await tablesDB.createRow(
        tableId: tableId,
        rowId: module.code,
        databaseId: '68d93af100092904c136',
        data: module.toJson(),
      );
      print(
        '✅ Ligne ${module.code} ajoutée : ${module.titre ?? 'sans titre'}',
      );
    } catch (e) {
      print(
        '❌ Erreur ligne ${module.code} (${module.titre ?? 'sans titre'}): $e',
      );
    }
  }

  // // --- Parcours et envoi des lignes ---
  // for (int rowIndex = 0; rowIndex < dataRows.length; rowIndex++) {
  //   final row = dataRows[rowIndex];
  //   Map<String, dynamic> rowData = {};

  //   rowData = Map.fromIterables(header, row);
  //   print("map : $rowData");
  //   final rowId = rowData["code"].toString().trim();
  //   print("Row ID : $rowId");
  //   final rowDataString = <String, String>{};

  //   rowData.forEach((key, value) {
  //     rowDataString[key] = value.toString().trim();
  //   });
  //   print("map en string : $rowDataString");

  // try {
  //   await tablesDB.createRow(
  //     tableId: tableId,
  //     rowId: rowId,
  //     databaseId: '68d93af100092904c136',
  //     data: rowDataString,
  //   );
  //   print(
  //     '✅ Ligne ${rowIndex + 1} ajoutée : ${rowData['titre'] ?? 'sans titre'}',
  //   );
  // } catch (e) {
  //   print(
  //     '❌ Erreur ligne ${rowIndex + 1} (${rowData['titre'] ?? 'sans titre'}): $e',
  //   );
  // }
}
