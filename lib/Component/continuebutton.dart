import 'package:flutter/material.dart';

class Continue extends StatelessWidget {
  Continue({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: (56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: const Color.fromARGB(255, 0, 26, 255),
        ),
        onPressed: press,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: (18),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
