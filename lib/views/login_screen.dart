import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../sanal_musavir.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double screenHeight = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          SizedBox(height: screenHeight * .12),
          const Text(
            "Hoşgeldiniz,",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * .01),
          Text(
            "Devam etmek için giriş yapın!",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(.6),
            ),
          ),
          SizedBox(height: screenHeight * .12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Kullanıcı adınızı girin',
              ),
            ),
          ),
          SizedBox(height: screenHeight * .025),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Şifrenizi girin',
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * .075,
          ),
          Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: TextButton(
                child:
                    const Text("Log In", style: TextStyle(color: Colors.white)),
                onPressed: () => Get.to(() => const SanalMusavir()),
              )),
          SizedBox(
            height: screenHeight * .15,
          ),
        ],
      ),
    ));
  }
}
