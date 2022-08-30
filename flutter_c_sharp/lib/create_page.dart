import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_c_sharp/login_page.dart';
import 'package:flutter_c_sharp/success_page.dart';

class CreatePage extends StatelessWidget {
  CreatePage({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool success = false;

  Future postLogin() async {
    try {
      String urlUsers = '';

      var data = {
        'email': 'deveda4217@logodez.com',
        'senha': 'Teste@123',
        'nome': 'Felipe'
      };
      var response = await Dio().post(urlUsers, data: data);
      print(response.data);
      return true;
    } catch (e) {
      print('Deu erro na requisiçao $e');
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 120, 10, 139),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
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
                        child: Icon(
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
                        child: Icon(
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
                        child: Icon(
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
                        controller: nameController,
                        decoration: const InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.person),
                          fillColor: Colors.white,
                          labelText: 'Nome',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 24.0),
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.email),
                          fillColor: Colors.white,
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'O campo de email não deve estar vazio!';
                          }
                          String pattern = r'\w+@\w+\.\w+';
                          RegExp regex = RegExp(pattern);
                          if (!regex.hasMatch(emailController.text)) {
                            return 'Informe um email válido!';
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
                        decoration: const InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.lock_outline),
                          fillColor: Colors.white,
                          labelText: 'Password',
                        ),
                        keyboardType: TextInputType.emailAddress,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 24.0),
                      child: TextFormField(
                        controller: confirmController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.lock_outline),
                          focusColor: Color.fromARGB(255, 120, 10, 139),
                          labelText: 'Confirm Password',
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
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: MaterialButton(
                        elevation: null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () async {
                          success = await postLogin();
                          if (success) {
                            // ignore: use_build_context_synchronously
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SuccessPage(),
                              ),
                            );
                          } else {}
                        },
                        minWidth: 250,
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 120, 10, 139),
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
                child: Text(
                  'To keep conected with us please login with your personal info',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 206, 200, 200)),
                ),
              ),
              TextButton(
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  ),
                },
                child: const Text(
                  'SIGN IN',
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
