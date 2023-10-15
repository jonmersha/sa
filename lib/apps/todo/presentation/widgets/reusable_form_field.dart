import 'package:flutter/material.dart';

class ReusableFormFields extends StatelessWidget {
  final TextEditingController inputController;
  final String label;
  final String erroLabel;
  var maxLine = 1;
  var maxLength = 50;
  var minLine = 1;

  //void Function(String value) function;

  ReusableFormFields({
    super.key,
    required this.inputController,
    required this.erroLabel,
    required this.label,
    this.maxLine = 1,
    this.maxLength = 50,
    this.minLine = 1,
    // required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      maxLength: maxLength,
      minLines: minLine,
      maxLines: maxLine,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.blue),
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: Colors.amber,
          labelText: label,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.blue),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(255, 29, 233, 10)),
            borderRadius: BorderRadius.circular(15),
          ),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1))),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      textCapitalization: TextCapitalization.none,
      validator: (interedvalue) {
        if (interedvalue == null || interedvalue.trim().isEmpty) {
          return '$erroLabel is required';
        }

        return null;
      },
      // onSaved: (interedvalue) {
      //   value = interedvalue!;
      //   // print('the task $value');
      // },
    );
  }
}
