import 'package:flutter/material.dart';

class ButtonWithText extends StatelessWidget {
  final String insideText;
  final Color buttonColor;
  final navigationRoute;

  const ButtonWithText(
      {Key key, this.insideText, this.buttonColor, this.navigationRoute})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            //Go to login screen.
            Navigator.pushNamed(context, navigationRoute);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            insideText,
          ),
        ),
      ),
    );
  }
}
