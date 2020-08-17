import 'package:flutter/material.dart';
import 'package:ddc_dictionary/constant.dart';

class Tab2Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      shadowColor: Colors.amber[500],
      child: Form(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 4.0,
            ),
            TextFormField(
                decoration:
                    textInputDecoration.copyWith(hintText: 'འཚོལ/Search')),
          ],
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
