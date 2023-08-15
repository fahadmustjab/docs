import 'package:docs/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'repository/auth_repository.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void singInWithGoogle(WidgetRef ref) {
    ref.read(authRepositoryProvider).sigInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Center(
      child: ElevatedButton.icon(
        onPressed: () {
          return singInWithGoogle(ref);
        },
        icon: Image.asset(
          "assets/g-logo-2.png",
          height: 20,
        ),
        label: const Text(
          "Sign in with Google",
          style: TextStyle(color: kBlackColor),
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(150, 50), backgroundColor: kWhiteColor),
      ),
    ));
  }
}
