import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Data/data_classes.dart';

class FormationBox extends StatelessWidget {
  final Module module;
  final Session? session;

  const FormationBox({super.key, required this.module, this.session});

  void _openPopup(BuildContext context) {
    bool hasSession = session != null;

    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Fiche Formation',
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (_, __, ___) {
        return Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),

                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Ligne du haut avec thème + icônes + durée
                          Row(
                            children: [
                              Expanded(
                                flex: 7,
                                child: Text(
                                  module.theme,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[900],
                                  ),
                                ),
                              ),
                              if (hasSession) ...[
                                if (session!.modalite.contains('synchrone'))
                                  const Icon(
                                    Icons.headset,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                if (session!.modalite.contains('présentiel'))
                                  const Icon(
                                    Icons.home_work,
                                    size: 20,
                                    color: Colors.blue,
                                  ),
                                if (session!.modalite.contains('Magistère'))
                                  const Icon(
                                    Icons.computer,
                                    size: 20,
                                    color: Colors.purple,
                                  ),
                                const SizedBox(width: 8),
                              ],
                              Text(
                                '${module.duree}h',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          // Titre
                          Text(
                            module.titre,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 12),

                          // Objectifs
                          Text(
                            'Objectifs',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(module.objectifs),

                          if (hasSession) ...[
                            const SizedBox(height: 12),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  session!.modalite.contains("synchrone")
                                      ? const Text(
                                          'Modalité : Visioconférence',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      : const Text(
                                          'Modalité : en présentiel',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                  const SizedBox(height: 6),
                                  session!.lieu.contains("[1000000G]")
                                      ? Text('Durée : ${session!.duree}h')
                                      : Text(
                                          'Durée : ${session!.duree}h | Lieu : ${session!.lieu}',
                                        ),
                                  const SizedBox(height: 6),
                                  Text('Début : ${session!.debut}'),
                                  Text(
                                    'Fin inscriptions : ${session!.finInscriptions}',
                                  ),
                                  if (session!.description.isNotEmpty) ...[
                                    const SizedBox(height: 8),
                                    Text(
                                      session!.description,
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ],

                          const SizedBox(height: 20),

                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                final url =
                                    session?.lienInscriptions ??
                                    module.abonnement;
                                launchUrl(Uri.parse(url));
                              },
                              child: const Text("S'inscrire"),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Trombone en haut à gauche
                    const Positioned(
                      top: -16,
                      left: 24,
                      child: Icon(
                        Icons.attach_file,
                        size: 32,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return ScaleTransition(
          scale: CurvedAnimation(parent: anim, curve: Curves.easeOut),
          child: FadeTransition(opacity: anim, child: child),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    bool hasSession = session != null;

    return GestureDetector(
      onTap: () => _openPopup(context),
      child: Container(
        width: 300,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage('assets/images/fond.jpg'), // ou NetworkImage(url)
            fit: BoxFit.cover, // adapte l'image à la taille du container
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ligne avec thème et icônes modalité + durée
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Text(
                    module.theme,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[900],
                    ),
                  ),
                ),
                if (hasSession) ...[
                  if (session!.modalite.contains('synchrone'))
                    const Icon(Icons.headset, size: 20, color: Colors.green),
                  if (session!.modalite.contains('présentiel'))
                    const Icon(Icons.home_work, size: 20, color: Colors.blue),
                  if (session!.modalite.contains('Magistère'))
                    const Icon(Icons.computer, size: 20, color: Colors.purple),
                  const SizedBox(width: 8),
                ],
                Text('${module.duree}h', style: const TextStyle(fontSize: 12)),
              ],
            ),

            const SizedBox(height: 8),

            // Titre du module
            Text(
              module.titre.length > 90
                  ? module.titre.substring(0, 90)
                  : module.titre,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: () => _openPopup(context),
              child: const Text('Cela m\'intéresse'),
            ),
          ],
        ),
      ),
    );
  }
}
