// ignore_for_file: unnecessary_const

import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_c_sharp/home_page.dart';

import 'create_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool loading = false;

  List<Map> usersData = [];

  Future<void> getUser() async {
    try {
      var url = 'https://viacep.com.br/ws/json/';

      final response = await Dio().get(url);
      if (response.data['erro'] != "true") {
        usersData.add(response.data);
      } else {
        usersData.clear();
      }
      setState(() {});
    } catch (e) {
      usersData.clear();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 120, 10, 139),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 60),
              const Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 90, right: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(17),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        minRadius: 25,
                        child: const Icon(
                          AkarIcons.linkedin_fill,
                          color: Color.fromARGB(255, 120, 10, 139),
                          size: 24,
                        ),
                      ),
                      onTap: () => {},
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(17),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        minRadius: 25,
                        child: const Icon(
                          AkarIcons.google_fill,
                          color: Color.fromARGB(255, 120, 10, 139),
                          size: 30,
                        ),
                      ),
                      onTap: () => {},
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(17),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        minRadius: 25,
                        child: const Icon(
                          AkarIcons.github_fill,
                          color: Color.fromARGB(255, 120, 10, 139),
                          size: 30,
                        ),
                      ),
                      onTap: () => {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'or use your email account',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 24.0),
                      child: TextFormField(
                        controller: loginController,
                        decoration: const InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.email),
                          fillColor: Colors.white,
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'O campo de email n??o deve estar vazio!';
                          }
                          String pattern = r'\w+@\w+\.\w+';
                          RegExp regex = RegExp(pattern);
                          if (!regex.hasMatch(loginController.text)) {
                            return 'Informe um email v??lido!';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 24.0),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.lock_outline),
                          focusColor: const Color.fromARGB(255, 120, 10, 139),
                          labelText: 'Password',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Informa sua senha!';
                          } else if (value.length < 6) {
                            return 'Sua senha deve ter no m??nimo 6 caracteres';
                          }
                          return null;
                        },
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                          const Color.fromARGB(89, 163, 163, 160),
                        ),
                      ),
                      child: const Text(
                        'Forgot your password?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 172, 164, 164),
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: MaterialButton(
                        elevation: null,
                        onPressed: () async {
                          await getUser();
                          for (Map user in usersData) {
                            if (user["email"] == loginController.text &&
                                user["senha"] == passwordController.text) {
                              // ignore: use_build_context_synchronously
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            }
                          }
                        },
                        minWidth: 250,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 120, 10, 139),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 300,
                child: const Text(
                  'Enter your personal details and start your journey with us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 206, 200, 200)),
                ),
              ),
              TextButton(
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CreatePage(),
                    ),
                  ),
                },
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
