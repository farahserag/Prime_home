import 'package:flutter/material.dart';

Widget customeCon2({String? image, String? text, String? text1}) => SizedBox(
      width: 150,
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 210,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            text!,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            text1!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(192, 184, 164, 1),
            ),
          ),
        ],
      ),
    );
