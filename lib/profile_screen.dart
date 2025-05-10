import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String username;

  ProfileScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.jpg'), // Profil fotoğrafı
            ),
            SizedBox(height: 20),
            Text('Kullanıcı Adı: $username', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text(
              'Bu, kullanıcının profil açıklaması bölümüdür. Kullanıcı burada kendisi hakkında bilgi verebilir.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
