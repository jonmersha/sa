import 'package:awashderash/apps/todo/presentation/widgets/date_time_pick.dart';
import 'package:awashderash/apps/todo/presentation/widgets/date_time_picker.dart';
import 'package:awashderash/apps/todo/presentation/widgets/exapanded_body.dart';
import 'package:awashderash/apps/todo/presentation/widgets/reusable_app_bar.dart';
import 'package:awashderash/apps/todo/presentation/widgets/reusable_form_field.dart';
import 'package:awashderash/functions/navigation.dart';
import 'package:awashderash/widget/common/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class TaskCategoryDate extends StatefulWidget {
  final String tasks;
  final String description;

  const TaskCategoryDate(
      {super.key, required this.tasks, required this.description});

  @override
  State<TaskCategoryDate> createState() => _TaskCategoryDateState();
}

class _TaskCategoryDateState extends State<TaskCategoryDate> {
  DateTime currentDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String selectedDateTime = '';
  final format = DateFormat("yyyy-MM-dd HH:mm");
  // String Selected

  List<String> dropdownItems = ['Self', 'Team'];

  final _form = GlobalKey<FormState>();
  TextEditingController value = TextEditingController();
  String selectedValue = 'Option 1'; // Default selected val

  void _submit() async {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
    _form.currentState!.save();
  }

  void _dateTime() {}

  Future<void> _selectDate(BuildContext context) async {
    await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: currentDate,
      lastDate: DateTime(2050),
    ).then((DateTime? date) async {
      if (date != null) {
        final time = await showTimePicker(
          context: context,
          useRootNavigator: true,
          initialTime: TimeOfDay.fromDateTime(currentDate ?? DateTime.now()),
        );
        setState(() {
          selectedDateTime =
              '${date.year}/${date.month}/${date.day}  ${time?.hour}:${time?.minute}';
        });
      } else {
        selectedDateTime = currentDate.toString();
      }
    });
  }

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: 'Titile',
                      textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 57, 49, 24),
                    ),
                    ReusableText(
                      text: widget.tasks,
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ReusableText(
                      text: 'Task Description',
                      textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 57, 49, 24),
                    ),
                    ReusableText(
                        text: widget.description,
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                GestureDetector(
                  onTap: () => _selectDate(context),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 196, 205, 212),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(selectedDateTime.isEmpty
                        ? 'Select Start Date'
                        : selectedDateTime),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => _selectDate(context),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 196, 205, 212),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(selectedDateTime.isEmpty
                        ? 'Select End Date'
                        : selectedDateTime),
                  ),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer,
                      ),
                      onPressed: () {
                        pushTo(context, DatePicker());
                      },
                      child: const Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )

                // IconButton.outlined(
                //     onPressed: _submit, icon: Icon(Icons.new_label))
              ],
            ),
          )
        ],
      )),
    ));
  }
}
