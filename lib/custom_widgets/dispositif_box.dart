import 'package:flutter/material.dart';

class DispositifBox extends StatelessWidget {
  final String titre;
  final int nombreModules;
  final VoidCallback? onTap;

  const DispositifBox({
    super.key,
    required this.titre,
    required this.nombreModules,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 260,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        padding: const EdgeInsets.fromLTRB(32, 20, 32, 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 2),
            ),
          ],
          image: const DecorationImage(
            image: AssetImage("assets/images/fonddispo2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titre,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black, // lisible sur l'image
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '$nombreModules module${nombreModules > 1 ? "s" : ""}',
              style: const TextStyle(fontSize: 14, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
