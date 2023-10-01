// import 'package:awashderash/auth/auth_service.dart';
// import 'package:awashderash/widget/common/button_widget.dart';
// import 'package:awashderash/widget/common/square_tile.dart';
// import 'package:awashderash/widget/common/text_widget.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class RegisterEmail extends StatefulWidget {
//   final Function()? onTap;
//  const RegisterEmail({super.key, required this.onTap});
//
//   @override
//   State<RegisterEmail> createState() => _RegisterEmailState();
// }
//
// class _RegisterEmailState extends State<RegisterEmail> {
//
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmController = TextEditingController();
//
//   void dialogBox(String message) {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return Scaffold(
//             backgroundColor: Colors.grey[500],
//             body: Center(
//               child: SafeArea(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(Icons.error_outline,size: 100,color: Colors.red,),
//                       Text(
//                         message,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 25,
//                             color: Colors.red),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       GestureDetector(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Container(
//                               width: 300,
//                               alignment: Alignment.center,
//                               padding: const EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(25),
//                                   color: Colors.black),
//                               child: const Text(
//                                 'Ok',
//                                 style:
//                                 TextStyle(color: Colors.blue, fontSize: 25),
//                               )))
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         });
//   }
//
//   //Register User
//   void createUser() async {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         });
//     try {
//
//       UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: emailController.text.trim(),
//           password: passwordController.text.trim());
//     } on FirebaseAuthException catch (e) {
//       Navigator.pop(context);
//       //dialogBox('no user found for that email');
//       if (e.code == 'user-not-found') {
//         dialogBox('no user found for that email');
//       } else if (e.code == 'wrong-password') {
//         dialogBox('It is Wrong Password');
//       }
//     }
//      Navigator.pop(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 //logo
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Icon(
//                   Icons.person,
//                   size: 200,
//                   color: Colors.amber,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Happy to see you! Lets Create Account for you',
//                   style: TextStyle(color: Colors.grey[700], fontSize: 18),
//                 ),
//
//                 //User Name Text Field
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextWidget(
//                   controller: emailController,
//                   hintText: 'Email',
//                   obscureText: false,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//
//                 //Password text Field
//                 TextWidget(
//                   controller: passwordController,
//                   hintText: 'Password',
//                   obscureText: true,
//                 ),
//                 //Confirm Password
//                 const SizedBox(
//                   height: 20,
//                 ),
//
//                 //Password text Field
//                 TextWidget(
//                   controller: confirmController,
//                   hintText: 'Confirm Password',
//                   obscureText: true,
//                 ),
//
//                 //Sign In Button
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: ButtonWidget(
//                     onTap: createUser,
//                     buttonTitle: 'Sign Up',
//                   ),
//                 ),
//
//                 //Or continue with
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Row(
//                     children: const [
//                       Expanded(
//                           child: Divider(
//                             thickness: 0.5,
//                             color: Colors.white,
//                           )),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 8.0),
//                         child: Text(
//                           'Or continue with',
//                           style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey),
//                         ),
//                       ),
//                       Expanded(
//                           child: Divider(
//                             thickness: 0.5,
//                             color: Colors.white,
//                           )),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//
//                 //google+ apple sign in buttons
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children:  [
//                       SquareTile(
//                           onTap: AuthService().signInWithGoogle(),
//                           imagePath: 'asset/common/google.png'),
//                       SquareTile(
//                           onTap: (){},
//                           imagePath: 'asset/common/apple1.png'),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text('Already Have an Account!',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold)),
//                       GestureDetector(
//                         onTap: (){widget.onTap!();},
//                         child: Text(
//                           ' Login!',
//                           style: TextStyle(
//                               color: Colors.blue.shade900,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//
//                 //not a memeber? register now
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:awashderash/auth/auth_service.dart';
import 'package:awashderash/widget/common/button_widget.dart';
import 'package:awashderash/widget/common/square_tile.dart';
import 'package:awashderash/widget/common/text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterEmail extends StatefulWidget {
  final Function()? onTap;
  const RegisterEmail({super.key, required this.onTap});

  @override
  State<RegisterEmail> createState() => _RegisterEmailState();
}

class _RegisterEmailState extends State<RegisterEmail> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();




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

  //create users

  void createUser() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    try {

      UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      //dialogBox('no user found for that email');
      if (e.code == 'user-not-found') {
        dialogBox('no user found for that email');
      } else if (e.code == 'wrong-password') {
        dialogBox('It is Wrong Password');
      }
    }
    Navigator.pop(context);
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
                  height: 20,
                ),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                //Wellcome back, You have been missed

                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Well Come!  Let\'s create account for you',
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
                //
                const SizedBox(
                  height: 20,
                ),
             //Confirm Password
                TextWidget(
                  controller: confirmController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
                //
                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ButtonWidget(
                    onTap: createUser,buttonTitle: 'Sign Up',
                  ),
                ),

                //Or continue with
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: const [
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
                      const Text('Have Account?!',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      GestureDetector(
                        onTap: (){
                          widget.onTap!();
                        },
                        child: Text(
                          ' Login!',
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