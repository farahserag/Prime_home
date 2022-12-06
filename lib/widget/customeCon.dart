import 'package:flutter/material.dart';

Widget customContainer({
  required String image,
  required String text,
}) =>
    Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(154, 141, 108, 1),
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            image,
            width: 34,
            height: 33,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 13,
              color: Color.fromRGBO(192, 184, 164, 1),
            ),
          ),
        ],
      ),
    );
