import 'package:flutter/material.dart';
import '../service/component/BankServiceBody.dart';

class MainOperationPage extends StatefulWidget {
  const MainOperationPage({Key? key}) : super(key: key);

  @override
  State<MainOperationPage> createState() => _MainOperationPageState();
}
class _MainOperationPageState extends State<MainOperationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Showing the header
        Container(
          child: Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Column(
                //   children:  [
                //     BigText(
                //       color:AppColors.mainColor,
                //       text:"COOPBANK",
                //       size: 20,),
                //     Row(
                //       children: [
                //         SmallText(text: "Addis Ababa",color: Colors.black54,),
                //         const Icon(Icons.arrow_drop_down_rounded)
                //       ],
                //     )],
                // ),
                // Container(
                //   width: 45,
                //   height: 45,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(15),
                //       color: AppColors.mainColor),
                //   child: const Icon(
                //     Icons.search,
                //     color: Colors.white,
                //   ),
                // )
              ],
            ),
          ),
        ),
      // Showing the Body
        // Expanded(
            // child: SingleChildScrollView(
            //     child: BankServiceBody(),
            // ),
       // ),
        const BankServiceBody()

      ],
    ));
  }
}
