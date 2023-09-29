import 'package:awashderash/apps/todo/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300.0),
        child: Image.asset(
          'asset/todo/todologo.jpg',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextField(emailController: _emailController),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextField(emailController: _emailController),
            ),
            SizedBox(height: 20,)
            ,
            
            GestureDetector
            (
              onTap: () => {
                print('Login Clicked'),
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10)
                  ),
                child: Text('Login'),
            
              ),
            ),
            Text('Other Methods'),

          ],
        ),
      ),
    );
  }
}

