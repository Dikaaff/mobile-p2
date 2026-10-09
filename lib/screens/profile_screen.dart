import 'package:flutter/material.dart';
import '../widgets/profile_photo.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Menggunakan Expanded agar konten utama mengambil ruang secara proporsional
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      SizedBox(height: 16),
                      ProfilePhoto(radius: 60),
                      SizedBox(height: 16),
                      ProfileInfo(
                        name: 'Dika Afif Indrawan',
                        nim: '26.21.1629',
                        programStudi: 'S1 Informatika',
                        email: 'd.afif@students.amikom.ac.id',
                        lokasi: 'Yogyakarta, Indonesia',
                      ),
                      SizedBox(height: 16),
                      SocialMediaRow(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Menggunakan Flexible dengan flex: 1 untuk tombol aksi
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                        label: const Text('Edit'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.share),
                        label: const Text('Bagikan'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}