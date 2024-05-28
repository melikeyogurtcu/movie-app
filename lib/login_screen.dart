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
  late FirebaseAuth auth;
  String _errorMessage = "";

  Future<void> singInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _usernameController.text,
        password: _passwordController.text,
      );
      debugPrint('Signed in: ${userCredential.user!.uid}');
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const home_page()),
      );
    } catch (e) {
      setState(() {
        _errorMessage = " ❗️ Invalid username or password ❗️";
      });
      debugPrint('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    auth = FirebaseAuth.instance;

    auth.authStateChanges().listen((User? user) {
      if (user == null) {
        debugPrint('User is currently signed out!');
      } else {
        debugPrint('User is signed in!');
      }
    });
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
                    labelText: "Username or Email",
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
                  singInWithEmailAndPassword(
                      _usernameController.text, _passwordController.text);

                  // Giriş işlemleri veya doğrulama burada yapılabilir
                  // Örneğin bir API çağrısı veya yerel veritabanı kontrolü
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade500,
                ),
                child: const Text("Sign in",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
              ),
              const SizedBox(height: 16),
              Text(
                _errorMessage,
                style: const TextStyle(color: Colors.amber, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Create an account !',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("Sign up",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
              ),
            ],
          ),
        ),
      ),
    );
  }

/*void loginUserEmailAndPassword() async {
  try {
    var _userCredential = await auth.signInWithEmailAndPassword(
      email: email, password: _password);
    
    debugPrint(_userCredential.toString());
  } catch(e){
    debugPrint(e.toString());
  }
}*/
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}
