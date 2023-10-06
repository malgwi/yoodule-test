import 'package:flutter/material.dart';
import 'package:yoodule_test/components/image_box.dart';
import 'package:yoodule_test/components/my_text_field.dart';
import 'package:yoodule_test/screens/map_page.dart';
import 'package:yoodule_test/screens/sign_up.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});


  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

   void signUserIn() {}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children:  [
            const SizedBox(height: 50),
            // logo
            const ImageBox(imagePath: 'images/yoodule.png'),


            const SizedBox(height: 50),

            // Welcome back
            Text(
              'Welcome back you\'ve been missed!',
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

            // forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),


            ElevatedButton(
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapPage()),
              );
            },
                child: const Text(
                  'Sign In'
                ),
            ),


            const SizedBox(height: 25),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not Registered?',
                  style: TextStyle(
                    color: Colors.grey[700]
                  ),
                ),
                const SizedBox(width: 4),

                TextButton(onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                    child: const Text(
                        'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                ),
              ],
            )
          ],),
        ),
      ),
    );
  }
}