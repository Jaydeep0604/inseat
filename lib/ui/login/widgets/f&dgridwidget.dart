import 'package:flutter/material.dart';
import 'package:inseat/ui/login/models/menu1model.dart';

class GridFoodandDrinkWidget extends StatefulWidget {
   GridFoodandDrinkWidget({Key? key, required this.grid})
      : super(key: key);
  Menu1Model grid;
  @override
  State<GridFoodandDrinkWidget> createState() => _GridFoodandDrinkWidgetState();
}

class _GridFoodandDrinkWidgetState extends State<GridFoodandDrinkWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
             width: 160,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    
                      image: AssetImage("${widget.grid.menu1imgurl}"), fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110,left: 5),
            child: Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.black54,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: EdgeInsets.only(top: 5),
              alignment: Alignment.topCenter,
              child: Text(
                "${widget.grid.menu1desc}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
  