import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _LoginLogo(),
            _LoginForm(),
            _LoginLabels(),
            const Text(
              'Términos y condiciones de uso',
              style: TextStyle(fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        width: 170,
        child: const Column(
          children: [
            Image(image: AssetImage('assets/tag-logo.png')),
            SizedBox(height: 20),
            Text('Messenger', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  @override
  State<_LoginForm> createState() => __LoginFormState();
}

class __LoginFormState extends State<_LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const TextField(),
          const TextField(),
          ElevatedButton(
            onPressed: () {},
            child: null,
          )
        ],
      ),
    );
  }
}

class _LoginLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            '¿No tienes cuenta?',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '¡Crea una ahora!',
            style: TextStyle(
              color: Colors.blue[600],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
