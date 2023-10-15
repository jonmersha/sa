import 'package:awashderash/util/imoticons.dart';
import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  const TopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //fine
        EmoticonFace(
          emoticons: '😜',
          emoText: 'Bad',
        ),
        //Well
        EmoticonFace(
          emoticons: '😜',
          emoText: 'Fine',
        ),
        //Excellent
        EmoticonFace(
          emoticons: '😜',
          emoText: 'Well',
        ),
        EmoticonFace(
          emoticons: '😁',
          emoText: 'Excellent',
        ),
      ],
    );
  }
}
