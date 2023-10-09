import 'package:awashderash/apps/todo/presentation/pages/task_date_category.dart';
import 'package:awashderash/apps/todo/presentation/widgets/exapanded_body.dart';
import 'package:awashderash/apps/todo/presentation/widgets/reusable_app_bar.dart';
import 'package:awashderash/apps/todo/presentation/widgets/reusable_form_field.dart';
import 'package:awashderash/functions/navigation.dart';
import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final _form = GlobalKey<FormState>();

  TextEditingController taskTitle = TextEditingController();
  TextEditingController taskDescription = TextEditingController();

  void _submit() async {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
    _form.currentState!.save();

    pushTo(
        context,
        TaskCategoryDate(
            tasks: taskTitle.text.trim(),
            description: taskDescription.text.trim()));
  }

  //final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: SafeArea(
          child: Column(
        children: [
          ReusableAppBar(
            logo: 'asset/todo/add.png',
            actionList: Container(),
          ),
          const SizedBox(
            height: 30,
          ),
          ExpandedBody(
            child: Form(
              key: _form,
              child: Column(
                children: [
                  ReusableFormFields(
                    inputController: taskTitle,
                    erroLabel: 'Task Title',
                    label: 'Title',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusableFormFields(
                    inputController: taskDescription,
                    erroLabel: 'Task Description',
                    label: 'Description',
                    minLine: 10,
                    maxLine: 20,
                    maxLength: 1000,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primaryContainer,
                        ),
                        onPressed: _submit,
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )

                  // IconButton.outlined(
                  //     onPressed: _submit, icon: Icon(Icons.new_label))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
