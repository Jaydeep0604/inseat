import 'package:flutter/material.dart';
import 'package:inseat/palette.dart';
import 'package:inseat/ui/login/models/menu1model.dart';

class Menu1Widget extends StatefulWidget {
  Menu1Widget({Key? key, required this.menu1}) : super(key: key);
  Menu1Model menu1;
  @override
  State<Menu1Widget> createState() => _Menu1WidgetState();
}

class _Menu1WidgetState extends State<Menu1Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.regfeildback,
      height: 150,
      width: 150,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                child: Image.asset(
                  '${widget.menu1.menu1imgurl}',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
            ),
          ),
          Container(
            child: Text(
              "${widget.menu1.menu1desc}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
