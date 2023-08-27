import 'package:flutter/material.dart';
import 'package:movie_app/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/imagemovie.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Kullanıcı adı alanı
              Container(
                width: 200,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Şifre alanı
              Container(
                width: 200,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Giriş düğmesi
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home_page()),
                  );
                  String username = _usernameController.text;
                  String password = _passwordController.text;

                  // Giriş işlemleri veya doğrulama burada yapılabilir
                  // Örneğin bir API çağrısı veya yerel veritabanı kontrolü
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.red.shade500, // Buton rengini sarı yap
                ),
                child: Text("ENTER"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}
