import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF74C9FF), Color(0xFF8BC34A), Color(0xFF4E342E)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const Text(
                    '🇲🇱 FERME MALI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 8,
                          offset: Offset(2, 3),
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Construis • Cultive • Élève • Prospère',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25),

                  Card(
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.monetization_on,
                              color: Colors.amber, size: 32),
                          SizedBox(width: 8),
                          Text(
                            '5 000 FCFA',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  _GameButton(
                    label: 'JOUER',
                    icon: Icons.play_arrow,
                    color: const Color(0xFF43A047),
                    onPressed: () => _showMessage(
                      context,
                      'Bienvenue dans ta ferme !',
                    ),
                  ),
                  _GameButton(
                    label: 'CONTINUER',
                    icon: Icons.save,
                    color: const Color(0xFF1976D2),
                    onPressed: () => _showMessage(
                      context,
                      'Sauvegarde bientôt disponible.',
                    ),
                  ),
                  _GameButton(
                    label: 'NOUVELLE PARTIE',
                    icon: Icons.store,
                    color: const Color(0xFFFF9800),
                    onPressed: () => _showMessage(
                      context,
                      'Nouvelle ferme créée !',
                    ),
                  ),
                  _GameButton(
                    label: 'PARAMÈTRES',
                    icon: Icons.settings,
                    color: const Color(0xFF7B1FA2),
                    onPressed: () => _showMessage(
                      context,
                      'Paramètres du jeu.',
                    ),
                  ),

                  const SizedBox(height: 22),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _SmallMenu(
                        icon: Icons.assignment,
                        label: 'MISSIONS',
                        onTap: () => _showMessage(context, 'Missions'),
                      ),
                      _SmallMenu(
                        icon: Icons.card_giftcard,
                        label: 'CADEAUX',
                        onTap: () => _showMessage(context, 'Cadeaux'),
                      ),
                      _SmallMenu(
                        icon: Icons.storefront,
                        label: 'MARCHÉ',
                        onTap: () => _showMessage(context, 'Marché'),
                      ),
                      _SmallMenu(
                        icon: Icons.person,
                        label: 'PROFIL',
                        onTap: () => _showMessage(context, 'Profil'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),
                  const Text(
                    'Développe ta ferme et deviens le meilleur agriculteur !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GameButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const _GameButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: SizedBox(
        width: double.infinity,
        height: 64,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(icon, size: 30),
          label: Text(
            label,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
      ),
    );
  }
}

class _SmallMenu extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _SmallMenu({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Column(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.white,
            child: Icon(icon, color: Colors.green[700], size: 28),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
