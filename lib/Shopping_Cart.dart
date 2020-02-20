import 'package:flutter/material.dart';


class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => new _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Shopping Cart",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: '3',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'items',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),

                  Icon(Icons.share,size: 20.0,color: Colors.black,)

                ],
              ),
            ),

            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 2.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),





          ],
        ),

      ),

    );
  }
}


