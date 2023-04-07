import 'package:flutter/material.dart';

import 'package:chatapp/src/screens/screens.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'chat': (_) => const ChatScreen(),
  'loading': (_) => const LoadingScreen(),
  'login': (_) => const LoginScreen(),
  'register': (_) => const RegisterScreen(),
  'users': (_) => const UsersScreen(),
};
