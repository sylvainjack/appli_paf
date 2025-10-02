// import 'dart:convert';

// import 'package:dart_appwrite/dart_appwrite.dart';
// import 'package:dart_appwrite/enums.dart';
// import 'package:mon_niveau_anglais/data/data_class.dart';
// import 'package:mon_niveau_anglais/data/items_cl_a1.dart';
// import 'package:mon_niveau_anglais/data/items_cl_a2.dart';
// import 'package:mon_niveau_anglais/data/items_cl_a2p.dart';
// import 'package:mon_niveau_anglais/data/items_cl_b1.dart';
// import 'package:mon_niveau_anglais/data/items_co.dart';
// import 'package:mon_niveau_anglais/data/items_ce_a1.dart';
// import 'package:mon_niveau_anglais/data/items_ce_a2.dart';
// import 'package:mon_niveau_anglais/data/items_ce_a2p.dart';
// import 'package:mon_niveau_anglais/data/items_ce_b1.dart';
// import 'package:mon_niveau_anglais/logic/user_data_provider.dart';

// Future<void> connectServer() async {
//   try {
//     Client()
//         .setEndpoint(
//             'https://cloud.appwrite.io/v1') // Make sure your endpoint is accessible
//         .setProject('6441074a8af807749dd9') // Your project ID
//         .setKey(
//             '55dcb8cce4cf4cab689f2ad067aa5451c0d1b7bb0c605d4f83d6896b8c2114a8dafb5bb9b3b2b638000ab3f8209bd6340cb0d9ff9dfbf9ebc4793a5a6d8495e6c25500584ca7c7c1eecca310247d49999dd598cb8c6d951373d29ea5dd4aeb1bfee1a50435a771b0e9b4f74e6498c0f60e09c4bf38cf78c3ceb07e0d83e73905')
//         .setSelfSigned(); // Use only on dev mode with a self-signed SSL cert
//   } catch (e) {
//     print(e);
//   }
// }

// List<ItemEvalangue> fillList(int nombre) {
//   List<ItemEvalangue> list = [];
//   for (var i = 1; i <= nombre; i++) {
//     list.add(
//       ItemEvalangue(
//           ref: "GV1A2-$i",
//           niveau: "A2",
//           audio: false,
//           refSupport: "GV1A2",
//           actLangNiveau: 2,
//           question: "You/right.",
//           repCor: "are",
//           ch1: "have",
//           ch2: "is",
//           ch3: "am",
//           explications:
//               "Cet item évalue la connaissance de l'utilisation du verbe 'be' (être) pour exprimer les émotions ou les sentiments en anglais. En anglais, on utilise 'be' pour exprimer les émotions, tandis qu'en français, on utilise 'avoir'. Donc, la réponse correcte est 'You are right' (Tu as raison en français)."),
//     );
//   }
//   return list;
// }

// Future<void> updateItemsRef() async {
//   List<String> ceA1 = [];
//   List<String> ceA2 = [];
//   List<String> ceA2p = [];
//   List<String> ceB1 = [];
//   List<String> coA1 = [];
//   List<String> coA2 = [];
//   List<String> coA2p = [];
//   List<String> coB1 = [];
//   List<String> clA1 = [];
//   List<String> clA2 = [];
//   List<String> clA2p = [];
//   List<String> clB1 = [];
//   Client client = Client();
//   Databases databases = Databases(client);
//   client
//       .setEndpoint(
//           'https://cloud.appwrite.io/v1') // Make sure your endpoint is accessible
//       .setProject('6441074a8af807749dd9') // Your project ID
//       .setKey(
//           '55dcb8cce4cf4cab689f2ad067aa5451c0d1b7bb0c605d4f83d6896b8c2114a8dafb5bb9b3b2b638000ab3f8209bd6340cb0d9ff9dfbf9ebc4793a5a6d8495e6c25500584ca7c7c1eecca310247d49999dd598cb8c6d951373d29ea5dd4aeb1bfee1a50435a771b0e9b4f74e6498c0f60e09c4bf38cf78c3ceb07e0d83e73905')
//       .setSelfSigned(); // Use only on dev mode with a self-signed SSL cert
//   for (ItemEvalangue item in orlisteCEA1) {
//     ceA1.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCEA2) {
//     ceA2.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCEA2p) {
//     ceA2p.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCEB1) {
//     ceB1.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCOA1) {
//     coA1.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCOA2) {
//     coA2.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCOA2p) {
//     coA2p.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCOB1) {
//     coB1.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCLA1) {
//     clA1.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCLA2) {
//     clA2.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCLA2p) {
//     clA2p.add("${item.ref}-${item.refSupport}");
//   }
//   for (ItemEvalangue item in orlisteCLB1) {
//     clB1.add("${item.ref}-${item.refSupport}");
//   }

//   try {
//     print('COUCOU je suis là ');
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '65ad3ac48dc64f853880',
//     //   documentId: 'CEA1',
//     //   data: {'itemRefs': jsonEncode(ceA1)},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '65ad3ac48dc64f853880',
//     //   documentId: 'CEA2',
//     //   data: {'itemRefs': jsonEncode(ceA2)},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '65ad3ac48dc64f853880',
//     //   documentId: 'CEA2p',
//     //   data: {'itemRefs': jsonEncode(ceA2p)},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '65ad3ac48dc64f853880',
//     //   documentId: 'CEB1',
//     //   data: {'itemRefs': jsonEncode(ceB1)},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '65ad3ac48dc64f853880',
//     //   documentId: 'COA1',
//     //   data: {'itemRefs': jsonEncode(coA1)},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '65ad3ac48dc64f853880',
//     //   documentId: 'COA2',
//     //   data: {'itemRefs': jsonEncode(coA2)},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '65ad3ac48dc64f853880',
//     //   documentId: 'COA2p',
//     //   data: {'itemRefs': jsonEncode(coA2p)},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '65ad3ac48dc64f853880',
//     //   documentId: 'COB1',
//     //   data: {'itemRefs': jsonEncode(coB1)},
//     // );
//     await databases.createDocument(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: '65ad3ac48dc64f853880',
//       documentId: 'CLA1',
//       data: {'itemRefs': jsonEncode(clA1)},
//     );
//     await databases.createDocument(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: '65ad3ac48dc64f853880',
//       documentId: 'CLA2',
//       data: {'itemRefs': jsonEncode(clA2)},
//     );
//     await databases.createDocument(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: '65ad3ac48dc64f853880',
//       documentId: 'CLA2p',
//       data: {'itemRefs': jsonEncode(clA2p)},
//     );
//     await databases.createDocument(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: '65ad3ac48dc64f853880',
//       documentId: 'CLB1',
//       data: {'itemRefs': jsonEncode(clB1)},
//     );
//   } on AppwriteException catch (e) {
//     print(e.message);
//   }
// }

// Future<void> createAttributes() async {
//   Client client = Client();
//   Databases databases = Databases(client);
//   client
//       .setEndpoint(
//           'https://cloud.appwrite.io/v1') // Make sure your endpoint is accessible
//       .setProject('6441074a8af807749dd9') // Your project ID
//       .setKey(
//           '55dcb8cce4cf4cab689f2ad067aa5451c0d1b7bb0c605d4f83d6896b8c2114a8dafb5bb9b3b2b638000ab3f8209bd6340cb0d9ff9dfbf9ebc4793a5a6d8495e6c25500584ca7c7c1eecca310247d49999dd598cb8c6d951373d29ea5dd4aeb1bfee1a50435a771b0e9b4f74e6498c0f60e09c4bf38cf78c3ceb07e0d83e73905')
//       .setSelfSigned(); // Use only on dev mode with a self-signed SSL cert
//   String coll = "65465d51744d68a39dd1";

//   try {
//     await databases.createStringAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'ref',
//       size: 16,
//       xrequired: true,
//     );
//     await databases.createStringAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'niveau',
//       size: 4,
//       xrequired: true,
//     );
//     await databases.createBooleanAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'audio',
//       xrequired: true,
//     );
//     await databases.createStringAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'refSupport',
//       size: 16,
//       xrequired: true,
//     );
//     await databases.createIntegerAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'actLangNiveau',
//       xrequired: true,
//     );
//     await databases.createStringAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'question',
//       size: 300,
//       xrequired: true,
//     );
//     await databases.createStringAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'repCor',
//       size: 128,
//       xrequired: true,
//     );
//     await databases.createStringAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'ch1',
//       size: 128,
//       xrequired: true,
//     );
//     await databases.createStringAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'ch2',
//       size: 128,
//       xrequired: true,
//     );
//     await databases.createStringAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'ch3',
//       size: 128,
//       xrequired: true,
//     );
//     await databases.createStringAttribute(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: coll,
//       key: 'explications',
//       size: 2048,
//       xrequired: true,
//     );
//     await databases.createIndex(
//         databaseId: '64413d68c22699cb95ba',
//         collectionId: coll,
//         key: 'index_1',
//         type: IndexType.unique,
//         attributes: ['ref']);
//   } on AppwriteException catch (e) {
//     print(e.message);
//   }
// }

// Future<void> updateItems(
//     {required String collection, required List<ItemEvalangue> liste}) async {
//   Client client = Client();
//   Databases databases = Databases(client);
//   client
//       .setEndpoint(
//           'https://cloud.appwrite.io/v1') // Make sure your endpoint is accessible
//       .setProject('6441074a8af807749dd9') // Your project ID
//       .setKey(
//           '55dcb8cce4cf4cab689f2ad067aa5451c0d1b7bb0c605d4f83d6896b8c2114a8dafb5bb9b3b2b638000ab3f8209bd6340cb0d9ff9dfbf9ebc4793a5a6d8495e6c25500584ca7c7c1eecca310247d49999dd598cb8c6d951373d29ea5dd4aeb1bfee1a50435a771b0e9b4f74e6498c0f60e09c4bf38cf78c3ceb07e0d83e73905')
//       .setSelfSigned(); // Use only on dev mode with a self-signed SSL cert

//   try {
//     for (ItemEvalangue item in liste) {
//       await databases.createDocument(
//         databaseId: '64413d68c22699cb95ba',
//         collectionId: collection,
//         documentId: item.ref,
//         data: {
//           "ref": item.ref,
//           "niveau": item.niveau,
//           "audio": item.audio,
//           "refSupport": item.refSupport,
//           "actLangNiveau": item.actLangNiveau,
//           "question": item.question,
//           "repCor": item.repCor,
//           "ch1": item.ch1,
//           "ch2": item.ch2,
//           "ch3": item.ch3,
//           "explications": item.explications,
//         },
//       );
//     }
//   } on AppwriteException catch (e) {
//     print(e.message);
//   }
// }

// // Future<List<ItemRef>> downloadItemRef(Client client, String collection, String doc) async {
// //   Client client = Client()
// //       .setEndpoint(
// //           'https://cloud.appwrite.io/v1') // Make sure your endpoint is accessible
// //       .setProject('6441074a8af807749dd9') // Your project ID
// //       .setKey(
// //           '55dcb8cce4cf4cab689f2ad067aa5451c0d1b7bb0c605d4f83d6896b8c2114a8dafb5bb9b3b2b638000ab3f8209bd6340cb0d9ff9dfbf9ebc4793a5a6d8495e6c25500584ca7c7c1eecca310247d49999dd598cb8c6d951373d29ea5dd4aeb1bfee1a50435a771b0e9b4f74e6498c0f60e09c4bf38cf78c3ceb07e0d83e73905')
// //       .setSelfSigned(); // Use only on dev mode with a self-signed SSL cert

// //   Databases db = Databases(client);
// //   List<ItemRef> bufferList = [];
// //   try {
// //     final document = await db.getDocument(
// //       databaseId: '64413d68c22699cb95ba',
// //       collectionId: collection,
// //       documentId: doc,
// //     );
// //     List documentData = jsonDecode(document.data['itemRefs']).toList();
// //     for (var itemRef in documentData) {
// //       var part = itemRef.split('-');
// //       bufferList.add(ItemRef(ref: part[0], refSupport: part[1]));
// //     }
// //     return bufferList;
// //   } on AppwriteException catch (e) {
// //     print(e.message);
// //     return [];
// //   }
// // }

// Future<ItemEvalangue> getItem(String itemRef) async {
//   Client client = Client()
//       .setEndpoint(
//           'https://cloud.appwrite.io/v1') // Make sure your endpoint is accessible
//       .setProject('6441074a8af807749dd9') // Your project ID
//       .setKey(
//           '29afa2ad3f892ce1a3654a96b6dfd46456b4c0098aac314cc0808b476a2884076b54e9b241f1bc6683a4ce9fff853cdc3eaf124fb9b8db0e327d4ed9a35e27ed340dc4b2d69ce0cde034fcfba55469de78be6fcba2232de7e83b88cf25a11113101a3e86ca48c3579571d328cb1f045db5a3f0ca86f7723b07adad4612e56f58')
//       .setSelfSigned(); // Use only on dev mode with a self-signed SSL cert

//   Databases db = Databases(client);

//   String collection = "";

//   if (itemRef.substring(0, 4) == 'CEA1') {
//     collection = '65b5e24c9d22044bad4e';
//   } else if (itemRef.substring(0, 4) == 'CEA2' &&
//       itemRef.substring(0, 5) != 'CEA2p') {
//     collection = '65465d04ac98c5ad45c1';
//   } else if (itemRef.substring(0, 5) == 'CEA2p') {
//     collection = '65465d1868d134b715fc';
//   } else if (itemRef.substring(0, 4) == 'CEB1') {
//     collection = '65465d2712c48b38b12a';
//   } else if (itemRef.substring(0, 4) == 'COA1') {
//     collection = '65465d2f54c26703acff';
//   } else if (itemRef.substring(0, 4) == 'COA2' &&
//       itemRef.substring(0, 5) != 'COA2p') {
//     collection = '65465d37673a732c1bd0';
//   } else if (itemRef.substring(0, 5) == 'COA2p') {
//     print('Je suis dans la collection A2p');
//     collection = '65465d43c8632185d166';
//   } else if (itemRef.substring(0, 4) == 'COB1') {
//     collection = '65465d51744d68a39dd1';
//   } else if (itemRef[0] == 'G' || itemRef[0] == 'P') {
//     if (itemRef.contains('A1') == true) {
//       collection = '65465d885ca38ef86314';
//     } else if (itemRef.contains('A2') == true &&
//         itemRef.contains('A2p') == false) {
//       collection = '65465d956101160c8ee7';
//     } else if (itemRef.contains('A2p') == true) {
//       collection = '65465dad33a5a1299643';
//     } else if (itemRef.contains('B1') == true) {
//       collection = '65465dba75578f51f1a3';
//     }
//   }
//   print('Je suis apres la collection');
//   print('itemRef:$itemRef');
//   try {
//     print('coucou : $collection');

//     final document = await db.getDocument(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: collection,
//       documentId: itemRef,
//       queries: [],
//     );

//     print('je suis après me getdocument');
//     var data = document.data;

//     return ItemEvalangue(
//         ref: data['ref'],
//         niveau: data['niveau'],
//         audio: data['audio'],
//         refSupport: data['refSupport'],
//         actLangNiveau: data['actLangNiveau'],
//         question: data['question'],
//         repCor: data['repCor'],
//         ch1: data['ch1'],
//         ch2: data['ch2'],
//         ch3: data['ch3'],
//         explications: data['explications']);
//   } on AppwriteException catch (e) {
//     print(e.message);
//     return const ItemEvalangue(
//         ref: "",
//         niveau: "",
//         audio: false,
//         refSupport: "",
//         actLangNiveau: 0,
//         question: "",
//         repCor: "",
//         ch1: "",
//         ch2: "",
//         ch3: "",
//         explications: "");
//   }
// }

// Future<List<ItemEvalangue>> downloadItems(String doc) async {
//   Client client = Client()
//       .setEndpoint(
//           'https://cloud.appwrite.io/v1') // Make sure your endpoint is accessible
//       .setProject('6441074a8af807749dd9') // Your project ID
//       .setKey(
//           '55dcb8cce4cf4cab689f2ad067aa5451c0d1b7bb0c605d4f83d6896b8c2114a8dafb5bb9b3b2b638000ab3f8209bd6340cb0d9ff9dfbf9ebc4793a5a6d8495e6c25500584ca7c7c1eecca310247d49999dd598cb8c6d951373d29ea5dd4aeb1bfee1a50435a771b0e9b4f74e6498c0f60e09c4bf38cf78c3ceb07e0d83e73905')
//       .setSelfSigned(); // Use only on dev mode with a self-signed SSL cert

//   Databases db = Databases(client);
//   try {
//     final bufferlist = await db.getDocument(
//       databaseId: '64413d68c22699cb95ba',
//       collectionId: '644140dc91ca30c96457',
//       documentId: doc,
//     );
//     // final ceA2list = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CEA2',
//     // );
//     // final ceA2plist = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CEA2p',
//     // );
//     // final ceB1list = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CEB1',
//     // );
//     // final coA1list = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'COA1',
//     // );
//     // final coA2list = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'COA2',
//     // );
//     // final coA2plist = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'COA2p',
//     // );
//     // final coB1list = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'COB1',
//     // );
//     // final clA1list = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CLA1',
//     // );
//     // final clA2list = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CLA2',
//     // );
//     // final clA2plist = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CLA2p',
//     // );
//     // final clB1list = await _db.getDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CLB1',
//     // );

//     List bufferListData = bufferlist.data['items'];
//     return bufferListData
//         .map((e) => ItemEvalangue.fromJson(jsonDecode(e)))
//         .toList();

//     // List lCEA2 = ceA2list.data['items'];
//     // listeCEA2 =
//     //     lCEA2.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCEA2p = ceA2plist.data['items'];
//     // listeCEA2p =
//     //     lCEA2p.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCEB1 = ceB1list.data['items'];
//     // listeCEB1 =
//     //     lCEB1.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCOA1 = coA1list.data['items'];
//     // listeCOA1 =
//     //     lCOA1.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCOA2 = coA2list.data['items'];
//     // listeCOA2 =
//     //     lCOA2.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCOA2p = coA2plist.data['items'];
//     // listeCOA2p =
//     //     lCOA2p.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCOB1 = coB1list.data['items'];
//     // listeCOB1 =
//     //     lCOB1.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCLA1 = clA1list.data['items'];
//     // listeCLA1 =
//     //     lCLA1.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCLA2 = clA2list.data['items'];
//     // listeCLA2 =
//     //     lCLA2.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCLA2p = clA2plist.data['items'];
//     // listeCLA2p =
//     //     lCLA2p.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();

//     // List lCLB1 = clB1list.data['items'];
//     // listeCLB1 =
//     //     lCLB1.map((e) => ItemEvalangue.fromJson(jsonDecode(e))).toList();
//   } on AppwriteException catch (e) {
//     print(e.message);
//     return [];
//   }

// // TELECHARGEMENT DES ITEMS
// }





// // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CEA2',
//     //   data: {"items": orlisteCEA2.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CEA2p',
//     //   data: {"items": orlisteCEA2p.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CEB1',
//     //   data: {"items": orlisteCEB1.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'COA1',
//     //   data: {"items": orlisteCOA1.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'COA2',
//     //   data: {"items": orlisteCOA2.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'COA2p',
//     //   data: {"items": orlisteCOA2p.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'COB1',
//     //   data: {"items": orlisteCOB1.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CLA1',
//     //   data: {"items": orlisteCLA1.map((e) => jsonEncode(e)).toList()},
//     // );
//     // print('Coucou');
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CLA2',
//     //   data: {"items": orlisteCLA2.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CLA2p',
//     //   data: {"items": orlisteCLA2p.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await databases.createDocument(
//     //   databaseId: '64413d68c22699cb95ba',
//     //   collectionId: '644140dc91ca30c96457',
//     //   documentId: 'CLB1',
//     //   data: {"items": orlisteCLB1.map((e) => jsonEncode(e)).toList()},
//     // );
//     // await users.create(
//     //       userId: ID.unique(),
//     //       email: "sophie@hmail.fr",
//     //       password: "1234567890",
//     //       name: "sophie");