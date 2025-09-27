import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PAF App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ModulesPage(),
    );
  }
}

class ModulesPage extends StatefulWidget {
  const ModulesPage({super.key});

  @override
  State<ModulesPage> createState() => _ModulesPageState();
}

class _ModulesPageState extends State<ModulesPage> {
  final Client client = Client();
  late final Databases databases;

  List<dynamic> modules = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    // ⚠️ Remplace par tes propres infos Appwrite
    client
        .setEndpoint('https://cloud.appwrite.io/v1') // ton endpoint Appwrite
        .setProject('TON_PROJECT_ID'); // ton project ID

    databases = Databases(client);

    _loadModules();
  }

  Future<void> _loadModules() async {
    try {
      final response = await databases.listDocuments(
        databaseId: 'TON_DATABASE_ID',
        collectionId: 'Modules',
      );

      setState(() {
        modules = response.documents;
        isLoading = false;
      });
    } catch (e) {
      print('Erreur lors du chargement des modules : $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catalogue PAF")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: modules.length,
              itemBuilder: (context, index) {
                final module = modules[index].data;

                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(module['libelle']),
                    subtitle: Text(
                      "Durée : ${module['duree_heures']}h\n"
                      "Modalités : ${module['modalites'].join(', ')}",
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {
                        final url = module['lien_sofia'];
                        // Redirection web (dans Flutter Web, ça ouvre un nouvel onglet)
                        launchURL(url);
                      },
                      child: const Text("S'inscrire"),
                    ),
                  ),
                );
              },
            ),
    );
  }

  void launchURL(String url) {
    // Flutter Web → ouvre un nouvel onglet
    // ignore: undefined_prefixed_name
    import 'dart:html' as html;
    html.window.open(url, "_blank");
  }
}
