import 'package:flutter/material.dart';
import 'home_screen.dart';

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
                String username = _usernameController.text;
                if (username.isNotEmpty) {
                  // Kullanıcı adı boş değilse HomeScreen'e geçiş yapalım
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(username: username),
                    ),
                  );
                } else {
                  // Kullanıcı adı boş ise hata mesajı gösterelim
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Kullanıcı adı boş olamaz')),
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
