import 'package:batch33c/common_widgets/common_text_field.dart';
import 'package:batch33c/registration/registration_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = "/login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CommonTextField(
                  hintText: "Enter email",
                  controller: emailController,
                  prefixIcon: const Icon(Icons.mail),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text("Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                controller: passwordController,
                obscureText: visibility,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          visibility = !visibility;
                        });
                      },
                      child: visibility == false
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility)),
                  hintText: "Enter password",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.green, width: 2)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              child: ElevatedButton(onPressed: () {}, child: Text("Login")),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RegistrationScreen.routeName);
                    },
                    child: const Text("Register now"))),
          ],
        ),
      ),
    );
  }
}
