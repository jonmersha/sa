import 'package:awashderash/auth/auth_service.dart';
import 'package:awashderash/widget/common/button_widget.dart';
import 'package:awashderash/widget/common/square_tile.dart';
import 'package:awashderash/widget/common/text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void singInWithGoogle(){

  }
  void singInWithApple(){

  }

  void dialogBox(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.grey[500],
            body: Center(
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline,size: 100,color: Colors.red,),
                      Text(
                        message,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.red),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              width: 300,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.black),
                              child: const Text(
                                'Ok',
                                style:
                                TextStyle(color: Colors.blue, fontSize: 25),
                              )))
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  //Singn in User
  void signUserIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordController.text.trim());
              Navigator.pop(context);

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
       Navigator.pop(context);
        dialogBox('no user found for that email');
      } else if (e.code == 'wrong-password') {
        Navigator.pop(context);
       dialogBox('It is Wrong Password');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //logo
                const SizedBox(
                  height: 50,
                ),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                //Wellcome back, You have been missed

                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Well Come back!',
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                ),

                //User Name Text Field
                const SizedBox(
                  height: 20,
                ),
                TextWidget(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 20,
                ),

                //Password text Field
                TextWidget(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                //Forgort Password
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password'),
                    ],
                  ),
                ),
                //Sign In Button
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ButtonWidget(
                    onTap: signUserIn,buttonTitle: 'Sign In',
                  ),
                ),

                //Or continue with
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //google+ apple sign in buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      SquareTile(
                          onTap: ()=>AuthService().googleSignIn(),
                          imagePath: 'asset/common/google.png'),
                      SquareTile(onTap:(){},imagePath: 'asset/common/apple1.png'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a member Yet!',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      GestureDetector(
                        onTap: (){
                          widget.onTap!();
                        },
                        child: Text(
                          ' Register!',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )

                //not a memeber? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
