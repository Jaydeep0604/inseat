import 'package:flutter/material.dart';
import 'package:inseat/palette.dart';
import 'package:inseat/ui/homescreen/homescreen.dart';
import 'package:inseat/ui/login/models/menu1model.dart';
import 'package:inseat/ui/login/widgets/f&dgridwidget.dart';
import 'package:inseat/ui/login/widgets/menu1widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({ Key? key }) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Menu1Model> menugridlist = [
    Menu1Model("1", "assets/images/chocolate.jpeg", "CHOCOLATE"),
    Menu1Model("2", "assets/images/misc.jpeg", "MISC"),
    Menu1Model("3", "assets/images/gum.jpeg", "GUM"),
    Menu1Model("4", "assets/images/hotdrinks.jpeg", "HOT DRINKS"),
    Menu1Model("5", "assets/images/colddrinks.jpeg", "COLD DRINKS"),
    Menu1Model("6", "assets/images/chips.jpeg", "CHIPS"),
    Menu1Model("7", "assets/images/nuts.jpeg", "NUTS"),
    Menu1Model("8", "assets/images/grill.jpeg", "GRILL"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(
            child: Container(
              //color: Palette.inputfieldbackgroundcolor,
              decoration: BoxDecoration(
                  color: Palette.regfeildback,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
          
                        child: Column(
                          children: [
                            IconButton(
                              padding: EdgeInsets.only(top: 0),
                              onPressed: (){
                                 Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()),
                                          );
                              },
                              icon: Image.asset('assets/images/ic_back.png'),
                              iconSize: 30,
                            )
                          ],
                        ),
                      ),
                      
                          
                            Container(
                              padding: EdgeInsets.only(top: 15, left: 100),
                              child: Text(
                                'Category',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                         
                      Container(
                          padding: EdgeInsets.only(top: 0, left: 300),
                          child: IconButton(
                            onPressed: () {
                               Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()),
                                          );
                            },
                            icon: Image.asset('assets/images/home.png'),
                            iconSize: 20,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
                padding: EdgeInsets.only(top: 10,right: 20,left: 20),
                alignment: Alignment.topCenter,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    filled: true,
                    fillColor:Palette.regfeildback,
                    hintText: 'Search item',
                    border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                 prefixIcon: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset(
                                        'assets/images/ic_search.png',
                                        width: 0,
                                        height: 0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                  ),
                ),
              ),
              Expanded(
              child: Container(padding: EdgeInsets.only(top: 20),
            child: GridView.builder( itemCount: menugridlist.length,  
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 4.0,  
                  mainAxisSpacing: 4.0  
              ),  
            itemBuilder: (BuildContext context, int index){  
                return 
                GridFoodandDrinkWidget(grid: menugridlist[index]); 
              }, 
            ),
            
          ))
        ],
      )),
    );
  }
}
