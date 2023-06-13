import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const name = '/loginpage';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[100],
        body: Column(children: [
          const SizedBox(height: 150),
          ListTile(
            title: const Center(
              child: Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Center(
              child: Text('Login to your account',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.5))),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              controller: TextEditingController(),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Username",
                prefixIcon: const Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              controller: TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Icons.password_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'pageone');
                  },
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              Text(
                "   Signup",
                style: TextStyle(color: Color.fromARGB(255, 19, 50, 116)),
              ),
            ],
          ),
        ]));
  }
}
