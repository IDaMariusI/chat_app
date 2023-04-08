import 'package:flutter/material.dart';

import 'package:chatapp/src/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const LoginLogo(title: 'Register'),
                _LoginForm(),
                const LoginLabels(
                  route: 'login',
                  subTitle: '¡Ingresar con tu cuenta!',
                  title: '¿Ya tienes cuenta?',
                ),
                const Text(
                  'Términos y condiciones de uso',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
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
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            hintText: 'Name',
            icon: Icons.perm_identity,
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
          CustomInput(
            hintText: 'Email',
            icon: Icons.mail_outline,
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            hintText: 'Password',
            icon: Icons.lock_outline,
            isPassword: true,
            textController: passCtrl,
          ),
          BlueButton(
            buttonText: 'Ingresar',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}