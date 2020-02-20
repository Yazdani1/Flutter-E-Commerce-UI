import 'package:flutter/material.dart';


class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => new _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {

  String shoes1 = "https://images.pexels.com/photos/336372/pexels-photo-336372.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes2 = "https://images.pexels.com/photos/1027130/pexels-photo-1027130.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes3 = "https://images.pexels.com/photos/134064/pexels-photo-134064.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes4 = "https://images.pexels.com/photos/637076/pexels-photo-637076.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes5 = "https://images.pexels.com/photos/318236/pexels-photo-318236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes6 = "https://images.pexels.com/photos/786003/pexels-photo-786003.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes7 = "https://images.pexels.com/photos/2285500/pexels-photo-2285500.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";


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
                      style: DefaultTextStyle
                          .of(context)
                          .style,
                      children: <TextSpan>[
                        TextSpan(text: '3',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold)),
                        TextSpan(text: 'items',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),

                  Icon(Icons.share, size: 20.0, color: Colors.black,)

                ],
              ),
            ),

            SizedBox(height: 10.0,),

            Container(
              margin: EdgeInsets.all(10.0),
              height: 2.0,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.black,
            ),

            Container(
              height: 600.0,
              margin: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    shoppingItem(context, shoes6, "Ladies A5 Shoes",
                        "This is a new item", "240"),
                    SizedBox(height: 10.0,),

                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: 1.0,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      color: Colors.black,
                    ),
                    shoppingItem(context, shoes5, "Ladies A6 Shoes",
                        "This is a new item", "140"),
                    SizedBox(height: 10.0,),

                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: 1.0,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      color: Colors.black,
                    ),



                  ],
                ),
              ),
            ),


          ],
        ),

      ),

    );
  }

  Widget shoppingItem(BuildContext context, String img, String name, String dex,
      String price) {
    return Container(
      height: 150.0,
      child: Row(
        children: <Widget>[

          Expanded(
            flex: 1,
            child: Container(
              child: Image.network(img,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10.0,),

          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(name, style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black
                      ),),
                      SizedBox(height: 5.0,),
                      Text(dex, style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black
                      ),),
                    ],
                  ),
                ),

                SizedBox(height: 45.0,),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Text("\$" + price,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Container(
                              width: 120.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color(0xFF72286f),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("-",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("+",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            )


                          ],
                        ),
                      ),

                    ],
                  ),
                ),





              ],
            ),
          )


        ],
      ),
    );
  }

}


