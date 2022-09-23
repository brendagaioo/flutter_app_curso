import 'package:flutter/material.dart';
import 'package:shop_app/models/Curso.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.curso,
  }) : super(key: key);

  final Curso curso;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        curso.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
