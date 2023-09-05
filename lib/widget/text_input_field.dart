import 'package:flutter/material.dart';

Widget defaultFormFailed(
        {@required String? hintText,
        ValueChanged<String>? onSubmit,
        TextInputType? textInputType}) =>
    TextField(
      keyboardType: textInputType,
      onSubmitted: onSubmit,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        hintText: hintText,
      ),
    );
