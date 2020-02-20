import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp_ui/Home.dart';
import 'Shopping_Cart.dart';
import 'OrderDetails.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => new _IndexState();
}

class _IndexState extends State<Index> {

  int _selectPage=1;
  final pageOptions=[
    ShoppingCart(),
    Home(),
    OrderDetails()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text("E-Commerce"),
        backgroundColor: Color(0xFF72286f),
      ),

      drawer: Drawer(

      ),

      body: pageOptions[_selectPage],

      backgroundColor: Color(0xFF222240),

      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Color(0xFF222240),
        color: Color(0xFF272B4A),
        index: 1,
        animationDuration: Duration(milliseconds: 100),
        items: <Widget>[
          Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(Icons.history, size: 30, color: Colors.white,),
        ],
        onTap: (int index){
          setState(() {
            _selectPage=index;
          });
        },
      ),


    );
  }
}





