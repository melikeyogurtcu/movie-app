import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late FirebaseAuth auth;

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _usernameController.text,
        password: _passwordController.text,
      );
      debugPrint('Registered: ${userCredential.user!.uid}');
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  @override
  void initState() {
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
              // Username area
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
                  registerWithEmailAndPassword(
                      _usernameController.text, _passwordController.text);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade500,
                ),
                child: const Text("Create my account "),
              ),
              const Text(
                'Do you have an account ?',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("Sign in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegisterScreen(),
  ));
}
