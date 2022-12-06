import 'package:flutter/material.dart';

Widget containerImage() => Container(
      width: 170,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage('assets/pic1.png'), fit: BoxFit.fill)),
    );
