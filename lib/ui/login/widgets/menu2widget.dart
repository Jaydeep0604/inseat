import 'package:flutter/material.dart';
import 'package:inseat/palette.dart';
import 'package:inseat/ui/login/models/menu2model.dart';

class Menu2Widget extends StatefulWidget {
  Menu2Widget({Key? key, required this.menu2}) : super(key: key);
  Menu2Model menu2;
  @override
  State<Menu2Widget> createState() => _Menu2WidgetState();
}

class _Menu2WidgetState extends State<Menu2Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            height: 145,
            decoration: BoxDecoration(
                color: Palette.regfeildback,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            child: Container(
              width: 145,
              height: 145,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('${widget.menu2.m2imgurl}'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 150),
            child: Text(
              '${widget.menu2.m2desc}',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 110, left: 150),
            // alignment: Alignment.bottomCenter,
            child: Text(
              '\$${widget.menu2.m2price}',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
