
import 'package:flutter/material.dart';
//import 'package:flutter_share/flutter_share.dart';

class ShareDocument extends StatelessWidget {
  const ShareDocument({super.key});


  // Future<void> share() async {
  //   await FlutterShare.share(
  //       title: 'Example share',
  //       text: 'Example share text',
  //       linkUrl: 'https://flutter.dev/',
  //       chooserTitle: 'Example Chooser Title');
  // }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(

            //controller: _controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // TextButton(
                //   child: Text('Share text and link'),
                //   onPressed: share,
                // ),
              ],
            ),

        ),
      ),
    );
  }
}