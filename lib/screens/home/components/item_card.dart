import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shop_app/models/Curso.dart';
import 'package:shop_app/models/Curso.dart';

import '../../../constants.dart';
import '../../../models/Curso.dart';

class ItemCard extends StatelessWidget {
  final Curso curso;
  final Function press;
  const ItemCard({
    Key key,
    this.curso,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
                padding: EdgeInsets.all(kDefaultPaddin),
                decoration: BoxDecoration(
                  color: curso.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new ExactAssetImage(curso.image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.white, width: 2.0)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // Cursos is out demo list
              curso.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "R\$ ${curso.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
