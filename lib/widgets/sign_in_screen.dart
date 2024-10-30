import 'package:flutter/material.dart';
import 'package:lab6/widgets/reset_password_screen.dart';
import 'package:lab6/widgets/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Логотип по центру
            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                width: 200,
              ),
            ),

            SizedBox(height: 24.0),
            Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 24.0),
            // Поле вводу Email
            TextField(
              decoration: InputDecoration(
                labelText: 'Email:',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            SizedBox(height: 16.0),
            // Поле вводу Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password:',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            SizedBox(height: 16.0),
            // Кнопка Reset password
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    )
                  },
                  child: const Text("Sign up"),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            // Кнопка Sign up і Login
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Message'),
                              content: Text("Need to implement"),
                            );
                          },
                        )
                      },
                      child: const Text("Login"),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetPasswordScreen(),
                        ),
                      )
                    },
                    child: const Text("Reset password"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
