import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatefulWidget {
  @override
  _Favorite createState() => _Favorite();
}

class _Favorite extends State<CounterWithFavBtn> {
  SvgPicture heart = SvgPicture.asset("assets/icons/heart.svg");
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        GestureDetector(
            onTap: () {
              setState(() {
                like = !like;
              });
            },
            child: Container(
              padding: EdgeInsets.all(8),
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: like ? Color(0xFFFF6464) : Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: heart,
            )),
      ],
    );
  }
}
