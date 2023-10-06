import 'package:flutter/material.dart';

import '../components/image_box.dart';
import '../components/my_button.dart';
import '../components/my_text_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(height: 50),
            // logo
            const ImageBox(imagePath: 'images/yoodule.png'),


            const SizedBox(height: 50),

            // Welcome back
            Text(
              'Register with us',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 50),

            // Username
            MyTextField(
              controller: usernameController,
              hintText: 'username',
              obscureText: false,
            ),

            const SizedBox(height: 25),

            //password
            MyTextField(
              controller: passwordController,
              hintText: 'password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // sign in button
            MyButton(
              onTap: signUserIn,
            ),

          ],),
        ),
      ),
    );
  }
}