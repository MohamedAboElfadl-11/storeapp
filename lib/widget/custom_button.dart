import 'package:flutter/material.dart';

Widget customButton({required GestureTapCallback onTap}) => Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            "Add to cart",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
