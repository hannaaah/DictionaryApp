import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../themes/themes.dart';

class RetryButton extends StatelessWidget {
  const RetryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Themes.green, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
        child: Text(
          "RETRY",
          style: Themes.buttontext,
        ),
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent)),
      ),
    );
  }
}
