import 'package:flutter/material.dart';
import 'package:shop_app/models/Curso.dart';

import '../../../constants.dart';

class CursoTitleWithImage extends StatelessWidget {
  const CursoTitleWithImage({
    Key key,
    @required this.curso,
  }) : super(key: key);

  final Curso curso;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Mais informações",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            curso.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Preço\n"),
                    TextSpan(
                      text: "R\$ ${curso.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${curso.id}",
                  child: Image.asset(
                    curso.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
