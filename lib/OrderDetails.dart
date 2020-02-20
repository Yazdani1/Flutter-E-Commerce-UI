import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => new _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
          ],
        ),

      ),

    );
  }

  Widget orderDetails(BuildContext context, String img, String transaction,
      String amount, String status) {
    return Container(
      height: 250.0,
      margin: EdgeInsets.all(10.0),
      child: Card(
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.history, size: 20.0, color: Colors.black,),
                        SizedBox(width: 5.0,),
                        Text("Transaction No:",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        Icon(Icons.content_copy,
                          color: Colors.black,
                          size: 20.0,
                        )

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}


