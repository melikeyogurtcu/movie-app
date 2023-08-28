
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/home_page.dart';
import 'package:movie_app/register_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late FirebaseAuth auth ;

@override
void initState(){
  super.initState();
  auth = FirebaseAuth.instance;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/loginscreenimage.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // User Name area
              Container(
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Password area
              Container(
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Enter Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const home_page()),
                  );
                  String username = _usernameController.text;
                  String password = _passwordController.text;

                  // Giriş işlemleri veya doğrulama burada yapılabilir
                  // Örneğin bir API çağrısı veya yerel veritabanı kontrolü
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade500,
                ),
                child: const Text("Sign in"),
              ),
              const Text('Create an account !',
              style:  TextStyle(
                color: Colors.red,
                fontSize: 15,

              ),),
              
              ElevatedButton(
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("Sign up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main()  {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}
