import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Giriş Yap')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Henüz hiçbir ekrana geçiş yok, çünkü home_screen eklenmedi
                String username = _usernameController.text;
                if (username.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Hoş geldin, $username')),
                  );
                }
              },
              child: Text('Giriş'),
            ),
          ],
        ),
      ),
    );
  }
}
