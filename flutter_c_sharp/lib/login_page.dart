import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 120, 10, 139),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Sign in",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.abc),
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.abc),
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.abc),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'or use your email account',
                style: TextStyle(color: Colors.grey),
              ),
              Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: TextFormField(
                        controller: loginController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'O campo de email não deve estar vazio!';
                          }
                          String pattern = r'\w+@\w+\.\w+';
                          RegExp regex = RegExp(pattern);
                          if (!regex.hasMatch(loginController.text)) {
                            return 'Informe um email válido!';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Informa sua senha!';
                          } else if (value.length < 6) {
                            return 'Sua senha deve ter no mínimo 6 caracteres';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () => {},
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                onPressed: () => {},
                minWidth: 300,
                color: Colors.white,
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(color: Color.fromARGB(255, 120, 10, 139),fontSize: 24),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                  'Enter your personal details and start your journey with us'),
              TextButton(
                onPressed: () => {},
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
